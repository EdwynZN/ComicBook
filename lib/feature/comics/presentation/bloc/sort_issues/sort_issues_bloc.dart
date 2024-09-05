import 'package:comic_book/feature/comics/domain/model/filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortBloc extends Cubit<Filter> {
  SortBloc() : super(const Filter(value: 'cover_date'));

  /// TODO: Filter by value
  void updateFilter(String value) {}

  void updateSort(Sort newSort) {
    if (state.sort == newSort) return;
    emit(state.copyWith(sort: newSort));
  }

  void toggleSort() {
    final sort = switch (state.sort) {
      Sort.desc => Sort.asc,
      Sort.asc => Sort.desc,
    };
    emit(state.copyWith(sort: sort));
  }
}
