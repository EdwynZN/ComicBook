sealed class IssuesEvent {
  const IssuesEvent();
}

class IssuesPaginationIncrement extends IssuesEvent {
  /// Maximum size of page according to API
  final int size;

  const IssuesPaginationIncrement() : size = 100;
}

/// Event to refresh from the first page
class IssuesRefresh extends IssuesEvent {
  const IssuesRefresh();
}