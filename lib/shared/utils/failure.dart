sealed class Failure {
  final String message;

  /// If a failure can try again
  /// must failures can retry, but if there are some validation errors or
  /// the failure will fail again (deterministic) we better tell them there is
  /// no purpose of retrying
  final bool canRetry;

  const Failure({required this.message, required this.canRetry});

  @override
  String toString() {
    return '$runtimeType: $message';
  }
}

/// Failure when a Future has been canceled
class CancelFailure extends Failure {
  const CancelFailure({required super.message}) : super(canRetry: true);
}

/// Failure with no context (maybe an ArgumentError or some other exception)
class GeneralFailure extends Failure {
  const GeneralFailure({required super.message}) : super(canRetry: false);
}

/// SocketExceptions or no internet detected, this is different from a NetworkFailure
/// because this is an internal connection
class NoInternetFailure extends Failure {
  const NoInternetFailure({required super.message}) : super(canRetry: true);
}

/// Network Errors
/// - BadRequest
/// - Server (500)
sealed class NetworkFailure extends Failure {
  final int statusCode;

  const NetworkFailure({
    required super.message,
    required super.canRetry,
    required this.statusCode,
  });

  @override
  String toString() {
    return '$runtimeType ($statusCode): $message';
  }
}

class ServerNetworkFailure extends NetworkFailure {
  const ServerNetworkFailure({
    required super.message,
    int? statusCode,
  }) : super(canRetry: false, statusCode: statusCode ?? 500);
}

class BadRequestNetworkFailure extends NetworkFailure {
  final List<String> errors;

  const BadRequestNetworkFailure({
    required super.message,
    this.errors = const [],
    int? statusCode,
  }) : super(canRetry: false, statusCode: statusCode ?? 400);

  @override
  String toString() {
    final errorMessage = '$runtimeType: $message';
    if (errors.isEmpty) {
      return errorMessage;
    }
    final buffer = StringBuffer(errorMessage)..writeln();
    for (final singleError in errors) {
      buffer.writeln(singleError);
    }
    return buffer.toString();
  }
}

/// General purpose network error
class HttpNetworkFailure extends NetworkFailure {
  const HttpNetworkFailure({
    required super.message,
    required super.statusCode,
  }) : super(canRetry: statusCode < 307);
}
