part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.shopperLogin(LoginRequest request) = ShopperLogin;
  const factory LoginEvent.supplierLogin(LoginRequest request) = SupplierLogin;
  const factory LoginEvent.logout() = Logout;
  const factory LoginEvent.reset() = LoginReset;

  const factory LoginEvent.authenticate({
    UserEntity? user,
    String? token,
    required bool isAuthenticated,
  }) = Authenticated;
}
