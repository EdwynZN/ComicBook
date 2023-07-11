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
import 'package:sliver_tools/sliver_tools.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: BlocConsumer<IssuesBloc, BState<List<Issue>>>(
        listener: (context, state) {},
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: switch (state) {
                  DataValue<List<SimpleIssue>> s when s.value != null =>
                    BlocBuilder<ViewStyleBloc, ViewStyle>(
                      builder: (context, state) {
                        final issues = s.value!;
                        return switch (state) {
                          ViewStyle.List => _ListView(issues: issues),
                          ViewStyle.Grid => _GridView(issues: issues),
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
              ),
            ],
          );
        },
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
                      ViewStyle.List => const Icon(Icons.menu),
                      ViewStyle.Grid => const Icon(Icons.grid_view_sharp),
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

// ignore: unused_element
class _FilterButton extends StatelessWidget {
  final WidgetBuilder builder;
  final List<String>? filters;
  final bool active;
  final String title;

  const _FilterButton({
    Key? key,
    required this.builder,
    required this.filters,
    required this.title,
    // ignore: unused_element
    this.active = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.primaryColorLight;
    const textStyle = TextStyle(
      fontSize: 12.0,
      letterSpacing: -0.15,
      height: 1.25,
      fontWeight: FontWeight.w600,
    );
    final ButtonStyle style = ButtonStyle(
      elevation: const MaterialStatePropertyAll(4.0),
      shadowColor: const MaterialStatePropertyAll(Color(0xA0E9E9E9)),
      overlayColor: MaterialStatePropertyAll(primary.withOpacity(0.12)),
      visualDensity: const VisualDensity(vertical: -1.0),
      textStyle: const MaterialStatePropertyAll(textStyle),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 8.0),
      ),
      tapTargetSize: MaterialTapTargetSize.padded,
      foregroundColor:
          MaterialStateProperty.all(active ? primary : const Color(0xFF666666)),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return null;
        return Colors.white;
      }),
      side: MaterialStatePropertyAll(
        BorderSide(
          color: primary,
          style: active ? BorderStyle.solid : BorderStyle.none,
          width: 1.0,
        ),
      ),
      shape: MaterialStateProperty.all(const StadiumBorder()),
    );
    final label = Text(title);
    final list = filters;
    if (list == null || list.length <= 1) {
      return ElevatedButton(
        style: style,
        onPressed: () {},
        child: label,
      );
    }
    return ElevatedButton.icon(
      style: style,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          showDragHandle: true,
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
          ),
          backgroundColor: Colors.white,
          useRootNavigator: false,
          isDismissible: true,
          builder: (context) {
            return DraggableScrollableSheet(
              key: const Key('Draggable'),
              maxChildSize: 0.85,
              minChildSize: 0.20,
              expand: false,
              snap: false,
              initialChildSize: (list.length / 8.0).clamp(0.18, 0.85),
              builder: (context, scrollController) {
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  controller: scrollController,
                  itemExtent: 56.0,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      value: true,
                      onChanged: (val) {},
                      title: Text(
                        list[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
      icon: const Icon(Icons.arrow_drop_down, size: 18.0),
      label: label,
    );
  }
}
