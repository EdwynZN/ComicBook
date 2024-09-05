import 'package:dio/dio.dart';

/// All API Responses should be in the format:
/// {
///   "error": "OK",
///   "limit": 0,
///   "offset": 0,
///   "number_of_page_results": 0,
///   "number_of_total_results": 0,
///   "status_code": 100,
///   "results": [
///     /// data in a List<dynamic> or Map<String, dynamic>
///   ],
///   "version": "1.0"
/// }
///
/// This Interceptor detects the Response/Error,
/// unwraps it and returns the correct object ('data')
/// or a DioException with the message from the server
class ResponseWrapperInterceptor extends Interceptor with DioApiWrapper {
  const ResponseWrapperInterceptor();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final int? code = response.statusCode;
    if (code != null && code > 201) {
      return handler.reject(serverError(response));
    }
    if (validateServerResponse(response)) {
      return super.onResponse(serverResponse(response), handler);
    }
    return handler.reject(serverError(response), true);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    late final DioException error0;
    if (err.type == DioExceptionType.badResponse && err.response != null) {
      error0 = serverError(err.response!);
    } else {
      error0 = err;
    }
    return super.onError(error0, handler);
  }
}

mixin DioApiWrapper on Interceptor {
  bool validateServerResponse(Response response) {
    final data = response.data;
    if (data is Map<String, dynamic> &&
        data['error'] == 'OK' &&
        data['status_code'] == 1 &&
        data.containsKey('results')) {
      return true;
    }
    return false;
  }

  DioException serverError(Response response) {
    String? errorMessage = response.statusMessage;
    if (response.data is Map && response.data['error'] != null) {
      errorMessage = response.data['error'];
    }
    return DioException(
      requestOptions: response.requestOptions,
      response: response,
      type: DioExceptionType.unknown,
      error: errorMessage ?? 'Server Error',
    );
  }

  Response serverResponse(Response response) {
    return Response(
      requestOptions: response.requestOptions,
      extra: response.extra,
      headers: response.headers,
      isRedirect: response.isRedirect,
      statusCode: response.statusCode,
      redirects: response.redirects,
      statusMessage: response.statusMessage,
      data: response.data['results'],
    );
  }
}
