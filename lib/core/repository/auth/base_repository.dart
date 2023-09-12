import 'package:dujis_partner/core/models/models.dart';

abstract class BaseAuthRepository {
  Future<AppResponse<LoginResponse?>> shopperLogin(LoginRequest loginRequest);
  Future<AppResponse<LoginResponse?>> supplierLogin(LoginRequest loginRequest);
  Future<AppResponse> logout();
}
