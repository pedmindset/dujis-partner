import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/utils/utils.dart';

class DioInterceptor extends Interceptor {
  static DioInterceptor? _singleton;

  DioInterceptor._internal();

  factory DioInterceptor() {
    return _singleton ??= DioInterceptor._internal();
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!options.headers.containsKey(HttpHeaders.authorizationHeader)) {
      final token = PreferenceUtils.getString(prefAuthKey);

      if (token.isNotEmpty) {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
      }
    }

    log(options.headers.toString());

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final responseData = mapResponseData(
      requestOptions: response.requestOptions,
      response: response,
    );

    return handler.resolve(responseData);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final errorMessage = getErrorMessage(err.type, err.response?.statusCode);

    final responseData = mapResponseData(
      requestOptions: err.requestOptions,
      response: err.response,
      customMessage: errorMessage,
      isErrorResponse: true,
    );

    return handler.resolve(responseData);
  }

  String getErrorMessage(DioErrorType errorType, int? statusCode) {
    String errorMessage = "";

    switch (errorType) {
      case DioErrorType.badCertificate:
        break;
      case DioErrorType.badResponse:
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.connectionError:
        break;
      case DioErrorType.connectionTimeout:
        errorMessage = DioErrorMessage.deadlineExceededException;
        break;
      case DioErrorType.receiveTimeout:
        errorMessage = DioErrorMessage.deadlineExceededException;
        break;
      case DioErrorType.sendTimeout:
        break;
      case DioErrorType.unknown:
        switch (statusCode) {
          case 400:
            errorMessage = DioErrorMessage.badRequestException;
            break;
          case 401:
            errorMessage = DioErrorMessage.badRequestException;
            break;
          case 404:
            errorMessage = DioErrorMessage.badRequestException;
            break;
          case 409:
            errorMessage = DioErrorMessage.badRequestException;
            break;
          case 500:
            errorMessage = DioErrorMessage.badRequestException;
            break;
        }
        break;
    }

    return errorMessage;
  }
}

class DioErrorMessage {
  static const badRequestException = "Invalid request";
  static const internalServerErrorException =
      "Unknown error occured, please try again later.";
  static const conflictException = "Conflict occurred";
  static const unauthorizedException = "Access denied";
  static const notFoundException =
      "The requested information could not be found.";
  static const unexceptedException = "Unexpected error occurred.";
  static const noInternetConnectionException =
      "No internet connection detected, please try again.";
  static const deadlineExceededException =
      "The connection has timed out, please try again.";
}

Response<dynamic> mapResponseData({
  Response<dynamic>? response,
  required RequestOptions requestOptions,
  String customMessage = "",
  bool isErrorResponse = false,
}) {
  final bool hasResponseData = response?.data != null;
  Map<String, dynamic> responseData = response?.data;

  if (hasResponseData) {
    responseData.addAll({
      "statusCode": response?.statusCode,
      "statusMessage": response?.statusMessage,
    });
  }

  return Response(
    requestOptions: requestOptions,
    data: hasResponseData
        ? responseData
        : AppResponse(
            success: isErrorResponse ? false : true,
            message: customMessage,
            statusCode: response?.statusCode,
            statusMessage: response?.statusMessage,
          ).toJson(
            (value) => null,
          ),
  );
}
