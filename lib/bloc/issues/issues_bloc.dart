import 'package:comic_book/model/filter.dart';
import 'package:comic_book/model/issue.dart';
import 'package:comic_book/model/state.dart';
import 'package:comic_book/repository/comic_book_repository.dart';
import 'package:comic_book/utils/failure_converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events/issue_events.dart';

class IssuesBloc extends Bloc<IssuesEvent, BState<List<SimpleIssue>>> {
  Filter _filter;
  final ComicBookRepository repository;

  IssuesBloc({
    required this.repository,
    required Filter initialFilter,
  })  : _filter = initialFilter,
        super(const InitialState()) {
    on<IssuesPaginationIncrement>((event, emit) async {
      final List<SimpleIssue>? data = _data;
      final int offset = data != null ? data.length : 0;
      try {
        emit(LoadingState<List<SimpleIssue>>.refresh(value: data));
        final result = await _loadPage(offset);
        if (result.isEmpty) {
          emit(NoMoreDataState<List<SimpleIssue>>([...?data, ...result]));
        } else {
          emit(DataState<List<SimpleIssue>>([...?data, ...result]));
        }
      } catch (e) {
        final failure = failureConverter(e);
        emit(ErrorState<List<SimpleIssue>>(failure: failure, value: data));
      }
    });
    on<IssuesRefresh>((event, emit) async {
      final List<SimpleIssue>? data = _data;
      try {
        emit(LoadingState<List<SimpleIssue>>.refresh(value: data));
        final result = await _loadPage(0);
        if (result.isEmpty) {
          emit(NoMoreDataState<List<SimpleIssue>>(result));
        } else {
          emit(DataState<List<SimpleIssue>>(result));
        }
      } catch (e) {
        final failure = failureConverter(e);
        emit(ErrorState<List<SimpleIssue>>(failure: failure, value: data));
      }
    });
    on<IssuesRefreshFilter>((event, emit) async {
      final List<SimpleIssue>? data = _data;
      try {
        emit(const LoadingState<List<SimpleIssue>>());
        final result = await _loadPage(0);
        if (result.isEmpty) {
          emit(NoMoreDataState<List<SimpleIssue>>(result));
        } else {
          emit(DataState<List<SimpleIssue>>(result));
        }
      } catch (e) {
        final failure = failureConverter(e);
        emit(ErrorState<List<SimpleIssue>>(failure: failure, value: data));
      }
    });

    /// Initializes first page
    add(const IssuesPaginationIncrement());
  }

  /// Any State that has data (excludes Initial)
  List<SimpleIssue>? get _data => switch (state) {
        DataValue<List<SimpleIssue>> s => s.value,
        _ => null,
      };

  Future<List<SimpleIssue>> _loadPage(int offset) async {
    final issues = await repository.issues(offset: offset, filter: _filter);
    return issues;
  }

  void retry() {
    add(const IssuesPaginationIncrement());
  }

  void updateFilter(Filter filter) {
    if (filter == _filter) return;
    _filter = filter;
    add(IssuesRefreshFilter(filter));
  }
}
