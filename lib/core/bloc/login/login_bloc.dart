import 'package:bloc/bloc.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/repos.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepo _authRepo;

  LoginBloc({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(LoginState.initial()) {
    on<ShopperLogin>((event, emit) async {
      if (state.status.isLoading) return;
      emit(state.copyWith(status: LoginDataStatus.loading));
      try {
        final response = await _authRepo.shopperLogin(event.request);

        if (response.success) {
          emit(
            state.copyWith(
              isAuthenticated: true,
              token: response.data!.token,
              user: response.data!.user,
              isShopper: true,
              status: LoginDataStatus.success,
              message: response.message,
            ),
          );
        } else {
          emit(state.copyWith(
              status: LoginDataStatus.error, message: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            status: LoginDataStatus.error, message: e.toString()));
      }
    });

    on<SupplierLogin>((event, emit) async {
      if (state.status.isLoading) return;
      emit(state.copyWith(status: LoginDataStatus.loading));
      try {
        final response = await _authRepo.supplierLogin(event.request);

        if (response.success) {
          emit(state.copyWith(
              isAuthenticated: true,
              token: response.data!.token,
              user: response.data!.user,
              status: LoginDataStatus.success,
              message: response.message));
        } else {
          emit(state.copyWith(
              status: LoginDataStatus.error, message: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            status: LoginDataStatus.error, message: e.toString()));
      }
    });

    on<Logout>((event, emit) async {
      if (state.status.isLoading) return;
      emit(state.copyWith(status: LoginDataStatus.loading));

      try {
        final response = await _authRepo.logout();

        if (response.success) {
          emit(state.copyWith(
              isAuthenticated: false,
              token: null,
              user: null,
              status: LoginDataStatus.success,
              message: response.message));
        } else {
          emit(state.copyWith(
              status: LoginDataStatus.error, message: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            status: LoginDataStatus.error, message: e.toString()));
      }
    });

    on<LoginReset>((event, emit) {
      emit(state.copyWith(status: LoginDataStatus.initial));
    });
  }
}
