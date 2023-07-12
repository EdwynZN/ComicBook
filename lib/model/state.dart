import 'package:comic_book/model/failure.dart';

sealed class BState<T> {
  const BState();
}

class InitialState<T> extends BState<T> {
  const InitialState();
}

class LoadingState<T> extends BState<T> implements DataValue<T> {
  final bool isRefreshing;

  /// Keeps previous value (if any), useful while loading but persisting the UI
  @override
  final T? value;

  const LoadingState()
      : value = null,
        isRefreshing = false;

  const LoadingState.refresh(
    this.value,
  ) : isRefreshing = true;
}

class DataState<T> extends BState<T> implements DataValue<T> {
  @override
  final T value;

  const DataState(this.value);
}

/// State when there is no more data to load (last page for example)
class NoMoreDataState<T> extends BState<T> implements DataValue<T> {
  @override
  final T value;

  const NoMoreDataState(this.value);
}

class ErrorState<T> extends BState<T> implements DataValue<T> {
  final Failure failure;

  /// Keeps previous value (if any),
  /// useful when trying to show a message but keep the UI
  @override
  final T? value;

  const ErrorState({
    required this.failure,
    this.value,
  });
}

abstract class DataValue<T> {
  T? get value;
}
