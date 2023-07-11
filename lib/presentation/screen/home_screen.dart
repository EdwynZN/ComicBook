import 'package:comic_book/bloc/issues/events/issue_events.dart';
import 'package:comic_book/bloc/issues/issues_bloc.dart';
import 'package:comic_book/bloc/view_style/events/view_style_events.dart';
import 'package:comic_book/bloc/view_style/state/view_style_event.dart';
import 'package:comic_book/bloc/view_style/view_style_bloc.dart';
import 'package:comic_book/model/issue.dart';
import 'package:comic_book/model/state.dart';
import 'package:comic_book/presentation/widget/single_grid_issue.dart';
import 'package:comic_book/presentation/widget/single_list_issue.dart';
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
                if (controller.hasClients &&
                    controller.position.extentAfter <
                        (controller.position.viewportDimension *
                            _kFactorViewport)) {
                  context
                      .read<IssuesBloc>()
                      .add(const IssuesPaginationIncrement());
                }
              },
              listenWhen: (previous, current) =>
                  current is DataState<List<Issue>>,
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
                          child: Text(e.toString()),
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
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 360.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {},
                child: const Text('Latest Issue'),
              ),
              const Spacer(),
              TextButton.icon(
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  context.read<ViewStyleBloc>().add(const ToggleStyleView());
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
          const Divider(height: 1.0, thickness: 1.0, color: Colors.black12),
        ],
      ),
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
            LoadingState s when s.value != null && !s.isRefreshing => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ErrorState e => TextButton(
                onPressed: () {
                  context
                      .read<IssuesBloc>()
                      .add(const IssuesPaginationIncrement());
                },
                child: Text(e.error.toString()),
              ),
            NoMoreDataState() => const Center(
                child: Text('No more data'),
              ),
            _ => const SizedBox(),
          };
        },
      ),
    );
  }
}
