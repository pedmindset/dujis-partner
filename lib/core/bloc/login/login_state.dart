part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    required bool isAuthenticated,
    required LoginDataStatus status,
    required bool isShopper,
    UserEntity? user,
    String? token,
    String? message,
  }) = _LoginState;

  factory LoginState.initial() {
    return const LoginState(
      isAuthenticated: false,
      isShopper: false,
      status: LoginDataStatus.initial,
      token: null,
      user: null,
      message: null,
    );
  }
}
