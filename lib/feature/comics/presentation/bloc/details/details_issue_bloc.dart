import 'package:comic_book/feature/comics/presentation/bloc/details/details_event.dart';
import 'package:comic_book/feature/comics/domain/model/issue.dart';
import 'package:comic_book/shared/utils/state.dart';
import 'package:comic_book/feature/comics/domain/repository/comic_book_repository.dart';
import 'package:comic_book/shared/utils/failure_converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsIssuesBloc extends Bloc<DetailsIssueEvent, BState<DetailedIssue>> {
  final String url;
  final ComicBookRepository repository;

  DetailsIssuesBloc({
    required this.repository,
    required this.url,
  }) : super(const InitialState()) {
    on<FetchIssueEvent>((event, emit) async {
      if (state is LoadingState<DetailedIssue>) return;
      final DetailedIssue? data = _data;
      try {
        emit(LoadingState<DetailedIssue>.refresh(value: data));
        final result = await _loadIssue();
        emit(DataState<DetailedIssue>(result));
      } catch (e) {
        final failure = failureConverter(e);
        emit(ErrorState<DetailedIssue>(failure: failure, value: data));
      }
    });

    /// Initializes first page
    add(const FetchIssueEvent());
  }

  /// Any State that has data (excludes Initial)
  DetailedIssue? get _data => switch (state) {
        DataValue<DetailedIssue> s => s.value,
        _ => null,
      };

  Future<DetailedIssue> _loadIssue() async {
    final issue = await repository.issueDetailsFromUrl(url: url);
    return issue;
  }

  void retry() => add(const FetchIssueEvent());
}
