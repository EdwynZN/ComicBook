import 'package:comic_book/bloc/issues/issues_bloc.dart';
import 'package:comic_book/model/issue.dart';
import 'package:comic_book/model/state.dart';
import 'package:comic_book/presentation/widget/single_grid_issue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final refKey = useRef(GlobalKey());
    return Scaffold(
      key: refKey.value,
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
      ),
      body: BlocConsumer<IssuesBloc, BState<List<Issue>>>(
        listener: (context, state) {
        },
        builder: (context, state) {
          
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: switch (state) {
                  DataValue<List<SimpleIssue>> s when s.value != null => SliverGrid.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150.0,
                      childAspectRatio: 0.5,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: s.value!.length,
                    itemBuilder: (context, index) => SingleGridIssue(
                      issue: s.value![index],
                    ),
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
