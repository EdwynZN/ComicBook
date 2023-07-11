import 'package:comic_book/bloc/view_style/events/view_style_events.dart';
import 'package:comic_book/bloc/view_style/state/view_style_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewStyleBloc extends Bloc<ViewEvent, ViewStyle> {
  ViewStyleBloc() : super(ViewStyle.list) {
    on<ListStyleView>((event, emit) => emit(ViewStyle.list));
    on<GridStyleView>((event, emit) => emit(ViewStyle.grid));
    on<ToggleStyleView>((event, emit) {
      final newState = switch (state) {
        ViewStyle.list => ViewStyle.grid,
        ViewStyle.grid => ViewStyle.list,
      };
      emit(newState);
    });
  }
}
