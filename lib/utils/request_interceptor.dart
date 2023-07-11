import 'package:dio/dio.dart';

class RequestInterceptor extends QueuedInterceptor {
  final String apiKey;

  RequestInterceptor(this.apiKey);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final newOptions = options.copyWith(
      queryParameters: {
        ...options.queryParameters,
        /// add default apiKey and json format
        'api_key': apiKey,
        'format': 'json',
      },
    );
    return handler.next(newOptions);
  }
}
