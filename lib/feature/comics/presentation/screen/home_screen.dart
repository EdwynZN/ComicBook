import 'package:comic_book/feature/comics/presentation/bloc/issues/issue_events.dart';
import 'package:comic_book/feature/comics/presentation/bloc/issues/issues_bloc.dart';
import 'package:comic_book/feature/comics/presentation/bloc/sort_issues/sort_issues_bloc.dart';
import 'package:comic_book/feature/view_style/presentation/bloc/view_style_event.dart';
import 'package:comic_book/feature/view_style/domain/view_style_type.dart';
import 'package:comic_book/feature/view_style/presentation/bloc/view_style_bloc.dart';
import 'package:comic_book/feature/comics/domain/model/filter.dart';
import 'package:comic_book/feature/comics/domain/model/issue.dart';
import 'package:comic_book/shared/utils/space_gaps.dart';
import 'package:comic_book/shared/utils/state.dart';
import 'package:comic_book/feature/comics/presentation/widget/error_button.dart';
import 'package:comic_book/feature/comics/presentation/widget/error_snackbar.dart';
import 'package:comic_book/feature/comics/presentation/widget/single_grid_issue.dart';
import 'package:comic_book/feature/comics/presentation/widget/single_list_issue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sliver_tools/sliver_tools.dart';

const double _kFactorViewport = 0.5;

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController(keys: const []);
    final bloc = BlocProvider.of<IssuesBloc>(context);
    useEffect(() {
      void listenScroll() {
        final position = controller.position;
        if (bloc.state is DataState<List<Issue>> &&
            position.extentAfter <
                (position.viewportDimension * _kFactorViewport)) {
          bloc.add(const IssuesPaginationIncrement());
        }
      }

      controller.addListener(listenScroll);
      return () => controller.removeListener(listenScroll);
    }, [controller, bloc]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        forceMaterialTransparency: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: const Text(
          'ComicBook',
          style: TextStyle(
            fontSize: 28.0,
            letterSpacing: -1.25,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: _BottomFilter(),
          ),
        ),
      ),
      body: Scrollbar(
        controller: controller,
        thumbVisibility: true,
        child: CustomScrollView(
          controller: controller,
          slivers: [
            BlocConsumer<IssuesBloc, BState<List<Issue>>>(
              listener: (context, state) {
                if (state is ErrorState<List<Issue>> &&
                    state.value != null &&
                    context.mounted) {
                  final bloc = context.read<IssuesBloc>();
                  ScaffoldMessenger.of(context)
                    ..clearSnackBars()
                    ..showSnackBar(
                      errorSnackBar(
                        message: state.failure.message,
                        onPressed: bloc.retry,
                      ),
                    );
                } else if (state is DataState<List<Issue>> &&
                    controller.hasClients &&
                    controller.position.extentAfter <
                        (controller.position.viewportDimension *
                            _kFactorViewport)) {
                  context
                      .read<IssuesBloc>()
                      .add(const IssuesPaginationIncrement());
                }
              },
              listenWhen: (previous, current) =>
                  current is DataState<List<Issue>> ||
                  current is ErrorState<List<Issue>>,
              builder: (context, state) {
                return SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: switch (state) {
                    DataValue<List<SimpleIssue>> s when s.value != null =>
                      BlocBuilder<ViewStyleBloc, ViewStyle>(
                        builder: (context, state) {
                          final issues = s.value!;
                          return switch (state) {
                            ViewStyle.list => _ListView(issues: issues),
                            ViewStyle.grid => _GridView(issues: issues),
                          };
                        },
                      ),
                    LoadingState _ => const SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    ErrorState e => SliverToBoxAdapter(
                        child: Center(
                          child: ErrorButton(
                            message: e.failure.message,
                            onPressed: e.failure.canRetry
                                ? () => context.read<IssuesBloc>().retry()
                                : null,
                          ),
                        ),
                      ),
                    _ => const SliverToBoxAdapter(),
                  },
                );
              },
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: _PaginatedLoader(),
            ),
          ],
        ),
      ),
    );
  }
}

class _GridView extends StatelessWidget {
  final List<SimpleIssue> issues;

  // ignore: unused_element
  const _GridView({super.key, required this.issues});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
        childAspectRatio: 0.5,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: issues.length,
      itemBuilder: (context, index) => SingleGridIssue(issue: issues[index]),
    );
  }
}

class _ListView extends StatelessWidget {
  final List<SimpleIssue> issues;

  // ignore: unused_element
  const _ListView({super.key, required this.issues});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Space(1)),
      sliver: SliverCrossAxisConstrained(
        maxCrossAxisExtent: 400,
        child: SliverList.builder(
          itemCount: issues.length,
          itemBuilder: (context, index) =>
              SingleListIssue(issue: issues[index]),
        ),
      ),
    );
  }
}

class _BottomFilter extends StatelessWidget {
  // ignore: unused_element
  const _BottomFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                builder: (context) {
                  return TextButton.icon(
                    style: const ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.black),
                    ),
                    onPressed: () async {
                      final sortBloc = context.read<SortBloc>();
                      final size = context.size!;
                      final Offset offset =
                          (context.findRenderObject() as RenderBox)
                              .localToGlobal(Offset.zero);
                      final querySize = MediaQuery.sizeOf(context);
                      final isAsc = sortBloc.state.sort == Sort.asc;
                      final result = await showMenu<Sort>(
                        context: context,
                        position: RelativeRect.fromLTRB(
                          offset.dx,
                          offset.dy + size.height,
                          querySize.width - offset.dx - size.width,
                          querySize.height - offset.dy,
                        ),
                        items: [
                          PopupMenuItem(
                            value: Sort.asc,
                            enabled: !isAsc,
                            child: const Text('Oldest Issues'),
                          ),
                          PopupMenuItem(
                            value: Sort.desc,
                            enabled: isAsc,
                            child: const Text('Latest Issues'),
                          ),
                        ],
                      );
                      if (result == null) return;
                      sortBloc.updateSort(result);
                    },
                    icon: const Icon(Icons.sort),
                    label: BlocSelector<SortBloc, Filter, String>(
                      selector: (state) => switch (state.sort) {
                        Sort.asc => 'Oldest Issues',
                        Sort.desc => 'Latest Issues',
                      },
                      builder: (context, state) => Text(state),
                    ),
                  );
                },
              ),
              const Spacer(),
              if (size.width > 600) ...[
                BlocBuilder<ViewStyleBloc, ViewStyle>(
                  builder: (context, state) {
                    return TextButton.icon(
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.disabled)) {
                            return null;
                          } else if (state == ViewStyle.list) {
                            return Colors.green.shade700;
                          }
                          return Colors.black;
                        }),
                      ),
                      onPressed: () {
                        context
                            .read<ViewStyleBloc>()
                            .add(const ListStyleViewEvent());
                      },
                      icon: const Icon(Icons.menu),
                      label: const Text('List'),
                    );
                  },
                ),
                const SizedBox(width: 16.0),
                BlocBuilder<ViewStyleBloc, ViewStyle>(
                  builder: (context, state) {
                    return TextButton.icon(
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.disabled)) {
                            return null;
                          } else if (state == ViewStyle.grid) {
                            return Colors.green.shade700;
                          }
                          return Colors.black;
                        }),
                      ),
                      onPressed: () {
                        context
                            .read<ViewStyleBloc>()
                            .add(const GridStyleViewEvent());
                      },
                      icon: const Icon(Icons.grid_view_sharp),
                      label: const Text('Grid'),
                    );
                  },
                ),
              ] else
                TextButton.icon(
                  style: const ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {
                    context
                        .read<ViewStyleBloc>()
                        .add(const ToggleStyleViewEvent());
                  },
                  icon: BlocBuilder<ViewStyleBloc, ViewStyle>(
                    builder: (context, state) {
                      return switch (state) {
                        ViewStyle.list => const Icon(Icons.menu),
                        ViewStyle.grid => const Icon(Icons.grid_view_sharp),
                      };
                    },
                  ),
                  label: const Text('View'),
                ),
            ],
          ),
        ),
        const Divider(height: 1.0, thickness: 1.0, color: Colors.black12),
      ],
    );
  }
}

class _PaginatedLoader extends HookWidget {
  // ignore: unused_element
  const _PaginatedLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: BlocBuilder<IssuesBloc, BState<List<Issue>>>(
        builder: (context, state) {
          return switch (state) {
            LoadingState s when s.value != null => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ErrorState e when e.failure.canRetry && e.value != null =>
              ErrorButton(
                message: e.failure.message,
                onPressed: () => context.read<IssuesBloc>().retry(),
              ),
            NoMoreDataState() => const Center(child: Text('No more data')),
            _ => const SizedBox(),
          };
        },
      ),
    );
  }
}
