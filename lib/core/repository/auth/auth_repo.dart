import 'package:dio/dio.dart';
import 'package:dujis_partner/core/models/response/login/login_response.dart';
import 'package:dujis_partner/core/models/response/app_response/app_response.dart';
import 'package:dujis_partner/core/models/request/login/login_request.dart';
import 'package:dujis_partner/core/repository/auth/base_repository.dart';
import 'package:dujis_partner/core/utils/utils.dart';

import '../core/endpoints.dart';

class AuthRepo extends BaseAuthRepository {
  final Dio _dioClient;

  AuthRepo({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().instance;
  @override
  Future<AppResponse<LoginResponse?>> shopperLogin(
      LoginRequest loginRequest) async {
    final request = {
      'email': loginRequest.email,
      'password': loginRequest.password,
      'device_name': loginRequest.deviceName,
    };
    final response = await _dioClient.post(kshopperLogin, data: request);

    return AppResponse<LoginResponse?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? LoginResponse.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse> logout() async {
    final response = await _dioClient.post(kLogout);

    return AppResponse.fromJson(
      response.data,
      (dynamic json) => null,
    );
  }

  @override
  Future<AppResponse<LoginResponse?>> supplierLogin(
      LoginRequest loginRequest) async {
    final request = {
      'email': loginRequest.email,
      'password': loginRequest.password,
      'device_name': loginRequest.deviceName,
    };
    final response = await _dioClient.post(ksupplierLogin, data: request);

    return AppResponse<LoginResponse?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? LoginResponse.fromJson(json)
          : null,
    );
  }
}
