sealed class ViewEvent {
  const ViewEvent();
}

class ListStyleView extends ViewEvent {
  const ListStyleView();
}

class GridStyleView extends ViewEvent {
  const GridStyleView();
}

class ToggleStyleView extends ViewEvent {
  const ToggleStyleView();
}
