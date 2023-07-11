import 'package:comic_book/bloc/view_style/events/view_style_events.dart';
import 'package:comic_book/bloc/view_style/state/view_style_event.dart';
import 'package:comic_book/repository/preferences_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewStyleBloc extends Bloc<ViewEvent, ViewStyle> {
  final Preferences prefRepository;

  factory ViewStyleBloc.fromPreferences(Preferences prefRepository) {
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
