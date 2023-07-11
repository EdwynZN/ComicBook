import 'package:comic_book/bloc/details/details_issue_bloc.dart';
import 'package:comic_book/model/details_issue.dart';
import 'package:comic_book/model/issue.dart';
import 'package:comic_book/model/state.dart';
import 'package:comic_book/repository/comic_book_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IssueDetailsScreen extends StatelessWidget {
  final String url;
  final String? initialTitle;

  const IssueDetailsScreen({
    super.key,
    required this.url,
    this.initialTitle,
  });

  IssueDetailsScreen.fromIssue({
    super.key,
    required this.url,
    required SimpleIssue issue,
  }) : initialTitle = issue.name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsIssuesBloc>(
      lazy: false,
      create: (context) {
        final repository = RepositoryProvider.of<ComicBookRepository>(
          context,
          listen: false,
        );
        return DetailsIssuesBloc(repository: repository, url: url);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          forceMaterialTransparency: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ),
          centerTitle: true,
          title: BlocBuilder<DetailsIssuesBloc, BState<DetailsIssue>>(
            builder: (context, state) {
              final String? title = switch (state) {
                DataValue<DetailsIssue> s when s.value != null => s.value!.name,
                _ => initialTitle,
              };
              if (title == null) return const SizedBox();
              return Text(
                title,
                style: const TextStyle(
                  fontSize: 28.0,
                  letterSpacing: -1.25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              );
            },
          ),
        ),
        body: BlocBuilder<DetailsIssuesBloc, BState<DetailsIssue>>(
          builder: (context, state) {
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
