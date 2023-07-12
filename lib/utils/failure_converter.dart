import 'dart:io';

import 'package:comic_book/model/failure.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

Failure failureConverter(Object e) {
  if (e is DioException) {
    return switch (e.type) {
      DioExceptionType.badCertificate => GeneralFailure(message: e.toString()),
      DioExceptionType.badResponse when e.response?.statusCode != null =>
        HttpNetworkFailure(
          message: e.response!.statusMessage ?? e.response!.toString(),
          statusCode: e.response!.statusCode!,
        ),
      DioExceptionType.connectionError ||
      DioExceptionType.connectionTimeout =>
        const NoInternetFailure(
          message: 'Check your internet connection',
        ),
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout =>
        const CancelFailure(message: 'Timeout'),
      DioExceptionType.cancel =>
        const CancelFailure(message: 'Operation canceled'),
      _ => GeneralFailure(message: e.toString()),
    };
  } else if (e is SocketException) {
    return const NoInternetFailure(message: 'Check your internet connection');
  } else if (e is MissingRequiredKeysException) {
    return BadRequestNetworkFailure(
      message: 'not allowed values:',
      errors: e.missingKeys,
    );
  } else if (e is DisallowedNullValueException) {
    return BadRequestNetworkFailure(
      message: 'not allowed values:',
      errors: e.keysWithNullValues,
    );
  }
  return GeneralFailure(message: e.toString());
}
