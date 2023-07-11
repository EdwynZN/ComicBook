import 'package:comic_book/bloc/details/events/details_event.dart';
import 'package:comic_book/model/details_issue.dart';
import 'package:comic_book/model/state.dart';
import 'package:comic_book/repository/comic_book_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsIssuesBloc extends Bloc<DetailsIssueEvent, BState<DetailsIssue>> {
  final String url;
  final ComicBookRepository repository;

  DetailsIssuesBloc({
    required this.repository,
    required this.url,
  }) : super(const InitialState()) {
    on<FetchIssueEvent>((event, emit) async {
      if (state is LoadingState<DetailsIssue>) return;
      final DetailsIssue? data = _data;
      try {
        emit(LoadingState<DetailsIssue>.refresh(data));
        final result = await _loadIssue();
        emit(DataState<DetailsIssue>(result));
      } catch (e) {
        emit(ErrorState<DetailsIssue>(error: e, value: data));
      }
    });

    /// Initializes first page
    add(const FetchIssueEvent());
  }

  /// Any State that has data (excludes Initial)
  DetailsIssue? get _data => switch (state) {
        DataValue<DetailsIssue> s => s.value,
        _ => null,
      };

  Future<DetailsIssue> _loadIssue() async {
    final issue = await repository.issueDetailsFromDetailsUrl(url: url);
    return issue;
  }
}
