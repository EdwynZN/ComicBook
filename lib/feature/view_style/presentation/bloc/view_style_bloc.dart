import 'package:comic_book/feature/view_style/domain/repository/preferences_repository.dart';
import 'package:comic_book/feature/view_style/presentation/bloc/view_style_event.dart';
import 'package:comic_book/feature/view_style/domain/view_style_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewStyleBloc extends Bloc<ViewEvent, ViewStyle> {
  final ViewStyleRepository prefRepository;

  factory ViewStyleBloc.fromPreferences(ViewStyleRepository prefRepository) {
    final initialStyle = prefRepository.viewStyle;
    return ViewStyleBloc._(prefRepository, initialStyle);
  }

  ViewStyleBloc._(this.prefRepository, super.initialState) {
    on<ListStyleViewEvent>((event, emit) => _saveAndEmit(emit, ViewStyle.list));
    on<GridStyleViewEvent>((event, emit) => _saveAndEmit(emit, ViewStyle.grid));
    on<ToggleStyleViewEvent>((event, emit) async {
      final newState = switch (state) {
        ViewStyle.list => ViewStyle.grid,
        ViewStyle.grid => ViewStyle.list,
      };
      await _saveAndEmit(emit, newState);
    });
  }

  Future<void> _saveAndEmit(Emitter<ViewStyle> emit, ViewStyle newState) async {
    emit(newState);
    await prefRepository.saveViewStyle(newState);
  }
}
