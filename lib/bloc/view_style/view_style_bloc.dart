import 'package:comic_book/bloc/view_style/events/view_style_events.dart';
import 'package:comic_book/bloc/view_style/state/view_style_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewStyleBloc extends Bloc<ViewEvent, ViewStyle> {
  ViewStyleBloc() : super(ViewStyle.List) {
    on<ListStyleView>((event, emit) => emit(ViewStyle.List));
    on<GridStyleView>((event, emit) => emit(ViewStyle.Grid));
    on<ToggleStyleView>((event, emit) {
      final newState = switch (state) {
        ViewStyle.List => ViewStyle.Grid,
        ViewStyle.Grid => ViewStyle.List,
      };
      emit(newState);
    });
  }
}
