// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) shopperLogin,
    required TResult Function(LoginRequest request) supplierLogin,
    required TResult Function() logout,
    required TResult Function() reset,
    required TResult Function(
            UserEntity? user, String? token, bool isAuthenticated)
        authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest request)? shopperLogin,
    TResult? Function(LoginRequest request)? supplierLogin,
    TResult? Function()? logout,
    TResult? Function()? reset,
    TResult? Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? shopperLogin,
    TResult Function(LoginRequest request)? supplierLogin,
    TResult Function()? logout,
    TResult Function()? reset,
    TResult Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperLogin value) shopperLogin,
    required TResult Function(SupplierLogin value) supplierLogin,
    required TResult Function(Logout value) logout,
    required TResult Function(LoginReset value) reset,
    required TResult Function(Authenticated value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperLogin value)? shopperLogin,
    TResult? Function(SupplierLogin value)? supplierLogin,
    TResult? Function(Logout value)? logout,
    TResult? Function(LoginReset value)? reset,
    TResult? Function(Authenticated value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperLogin value)? shopperLogin,
    TResult Function(SupplierLogin value)? supplierLogin,
    TResult Function(Logout value)? logout,
    TResult Function(LoginReset value)? reset,
    TResult Function(Authenticated value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShopperLoginCopyWith<$Res> {
  factory _$$ShopperLoginCopyWith(
          _$ShopperLogin value, $Res Function(_$ShopperLogin) then) =
      __$$ShopperLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequest request});

  $LoginRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$ShopperLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ShopperLogin>
    implements _$$ShopperLoginCopyWith<$Res> {
  __$$ShopperLoginCopyWithImpl(
      _$ShopperLogin _value, $Res Function(_$ShopperLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$ShopperLogin(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRequestCopyWith<$Res> get request {
    return $LoginRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$ShopperLogin implements ShopperLogin {
  const _$ShopperLogin(this.request);

  @override
  final LoginRequest request;

  @override
  String toString() {
    return 'LoginEvent.shopperLogin(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopperLogin &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopperLoginCopyWith<_$ShopperLogin> get copyWith =>
      __$$ShopperLoginCopyWithImpl<_$ShopperLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) shopperLogin,
    required TResult Function(LoginRequest request) supplierLogin,
    required TResult Function() logout,
    required TResult Function() reset,
    required TResult Function(
            UserEntity? user, String? token, bool isAuthenticated)
        authenticate,
  }) {
    return shopperLogin(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest request)? shopperLogin,
    TResult? Function(LoginRequest request)? supplierLogin,
    TResult? Function()? logout,
    TResult? Function()? reset,
    TResult? Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
  }) {
    return shopperLogin?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? shopperLogin,
    TResult Function(LoginRequest request)? supplierLogin,
    TResult Function()? logout,
    TResult Function()? reset,
    TResult Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
    required TResult orElse(),
  }) {
    if (shopperLogin != null) {
      return shopperLogin(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperLogin value) shopperLogin,
    required TResult Function(SupplierLogin value) supplierLogin,
    required TResult Function(Logout value) logout,
    required TResult Function(LoginReset value) reset,
    required TResult Function(Authenticated value) authenticate,
  }) {
    return shopperLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperLogin value)? shopperLogin,
    TResult? Function(SupplierLogin value)? supplierLogin,
    TResult? Function(Logout value)? logout,
    TResult? Function(LoginReset value)? reset,
    TResult? Function(Authenticated value)? authenticate,
  }) {
    return shopperLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperLogin value)? shopperLogin,
    TResult Function(SupplierLogin value)? supplierLogin,
    TResult Function(Logout value)? logout,
    TResult Function(LoginReset value)? reset,
    TResult Function(Authenticated value)? authenticate,
    required TResult orElse(),
  }) {
    if (shopperLogin != null) {
      return shopperLogin(this);
    }
    return orElse();
  }
}

abstract class ShopperLogin implements LoginEvent {
  const factory ShopperLogin(final LoginRequest request) = _$ShopperLogin;

  LoginRequest get request;
  @JsonKey(ignore: true)
  _$$ShopperLoginCopyWith<_$ShopperLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupplierLoginCopyWith<$Res> {
  factory _$$SupplierLoginCopyWith(
          _$SupplierLogin value, $Res Function(_$SupplierLogin) then) =
      __$$SupplierLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequest request});

  $LoginRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$SupplierLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SupplierLogin>
    implements _$$SupplierLoginCopyWith<$Res> {
  __$$SupplierLoginCopyWithImpl(
      _$SupplierLogin _value, $Res Function(_$SupplierLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SupplierLogin(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRequestCopyWith<$Res> get request {
    return $LoginRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$SupplierLogin implements SupplierLogin {
  const _$SupplierLogin(this.request);

  @override
  final LoginRequest request;

  @override
  String toString() {
    return 'LoginEvent.supplierLogin(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierLogin &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierLoginCopyWith<_$SupplierLogin> get copyWith =>
      __$$SupplierLoginCopyWithImpl<_$SupplierLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) shopperLogin,
    required TResult Function(LoginRequest request) supplierLogin,
    required TResult Function() logout,
    required TResult Function() reset,
    required TResult Function(
            UserEntity? user, String? token, bool isAuthenticated)
        authenticate,
  }) {
    return supplierLogin(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest request)? shopperLogin,
    TResult? Function(LoginRequest request)? supplierLogin,
    TResult? Function()? logout,
    TResult? Function()? reset,
    TResult? Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
  }) {
    return supplierLogin?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? shopperLogin,
    TResult Function(LoginRequest request)? supplierLogin,
    TResult Function()? logout,
    TResult Function()? reset,
    TResult Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
    required TResult orElse(),
  }) {
    if (supplierLogin != null) {
      return supplierLogin(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperLogin value) shopperLogin,
    required TResult Function(SupplierLogin value) supplierLogin,
    required TResult Function(Logout value) logout,
    required TResult Function(LoginReset value) reset,
    required TResult Function(Authenticated value) authenticate,
  }) {
    return supplierLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperLogin value)? shopperLogin,
    TResult? Function(SupplierLogin value)? supplierLogin,
    TResult? Function(Logout value)? logout,
    TResult? Function(LoginReset value)? reset,
    TResult? Function(Authenticated value)? authenticate,
  }) {
    return supplierLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperLogin value)? shopperLogin,
    TResult Function(SupplierLogin value)? supplierLogin,
    TResult Function(Logout value)? logout,
    TResult Function(LoginReset value)? reset,
    TResult Function(Authenticated value)? authenticate,
    required TResult orElse(),
  }) {
    if (supplierLogin != null) {
      return supplierLogin(this);
    }
    return orElse();
  }
}

abstract class SupplierLogin implements LoginEvent {
  const factory SupplierLogin(final LoginRequest request) = _$SupplierLogin;

  LoginRequest get request;
  @JsonKey(ignore: true)
  _$$SupplierLoginCopyWith<_$SupplierLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$Logout>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) shopperLogin,
    required TResult Function(LoginRequest request) supplierLogin,
    required TResult Function() logout,
    required TResult Function() reset,
    required TResult Function(
            UserEntity? user, String? token, bool isAuthenticated)
        authenticate,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest request)? shopperLogin,
    TResult? Function(LoginRequest request)? supplierLogin,
    TResult? Function()? logout,
    TResult? Function()? reset,
    TResult? Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? shopperLogin,
    TResult Function(LoginRequest request)? supplierLogin,
    TResult Function()? logout,
    TResult Function()? reset,
    TResult Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperLogin value) shopperLogin,
    required TResult Function(SupplierLogin value) supplierLogin,
    required TResult Function(Logout value) logout,
    required TResult Function(LoginReset value) reset,
    required TResult Function(Authenticated value) authenticate,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperLogin value)? shopperLogin,
    TResult? Function(SupplierLogin value)? supplierLogin,
    TResult? Function(Logout value)? logout,
    TResult? Function(LoginReset value)? reset,
    TResult? Function(Authenticated value)? authenticate,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperLogin value)? shopperLogin,
    TResult Function(SupplierLogin value)? supplierLogin,
    TResult Function(Logout value)? logout,
    TResult Function(LoginReset value)? reset,
    TResult Function(Authenticated value)? authenticate,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements LoginEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class _$$LoginResetCopyWith<$Res> {
  factory _$$LoginResetCopyWith(
          _$LoginReset value, $Res Function(_$LoginReset) then) =
      __$$LoginResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginResetCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginReset>
    implements _$$LoginResetCopyWith<$Res> {
  __$$LoginResetCopyWithImpl(
      _$LoginReset _value, $Res Function(_$LoginReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginReset implements LoginReset {
  const _$LoginReset();

  @override
  String toString() {
    return 'LoginEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) shopperLogin,
    required TResult Function(LoginRequest request) supplierLogin,
    required TResult Function() logout,
    required TResult Function() reset,
    required TResult Function(
            UserEntity? user, String? token, bool isAuthenticated)
        authenticate,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest request)? shopperLogin,
    TResult? Function(LoginRequest request)? supplierLogin,
    TResult? Function()? logout,
    TResult? Function()? reset,
    TResult? Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? shopperLogin,
    TResult Function(LoginRequest request)? supplierLogin,
    TResult Function()? logout,
    TResult Function()? reset,
    TResult Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperLogin value) shopperLogin,
    required TResult Function(SupplierLogin value) supplierLogin,
    required TResult Function(Logout value) logout,
    required TResult Function(LoginReset value) reset,
    required TResult Function(Authenticated value) authenticate,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperLogin value)? shopperLogin,
    TResult? Function(SupplierLogin value)? supplierLogin,
    TResult? Function(Logout value)? logout,
    TResult? Function(LoginReset value)? reset,
    TResult? Function(Authenticated value)? authenticate,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperLogin value)? shopperLogin,
    TResult Function(SupplierLogin value)? supplierLogin,
    TResult Function(Logout value)? logout,
    TResult Function(LoginReset value)? reset,
    TResult Function(Authenticated value)? authenticate,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class LoginReset implements LoginEvent {
  const factory LoginReset() = _$LoginReset;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? user, String? token, bool isAuthenticated});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? isAuthenticated = null,
  }) {
    return _then(_$Authenticated(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({this.user, this.token, required this.isAuthenticated});

  @override
  final UserEntity? user;
  @override
  final String? token;
  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'LoginEvent.authenticate(user: $user, token: $token, isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, token, isAuthenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) shopperLogin,
    required TResult Function(LoginRequest request) supplierLogin,
    required TResult Function() logout,
    required TResult Function() reset,
    required TResult Function(
            UserEntity? user, String? token, bool isAuthenticated)
        authenticate,
  }) {
    return authenticate(user, token, isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest request)? shopperLogin,
    TResult? Function(LoginRequest request)? supplierLogin,
    TResult? Function()? logout,
    TResult? Function()? reset,
    TResult? Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
  }) {
    return authenticate?.call(user, token, isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? shopperLogin,
    TResult Function(LoginRequest request)? supplierLogin,
    TResult Function()? logout,
    TResult Function()? reset,
    TResult Function(UserEntity? user, String? token, bool isAuthenticated)?
        authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(user, token, isAuthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperLogin value) shopperLogin,
    required TResult Function(SupplierLogin value) supplierLogin,
    required TResult Function(Logout value) logout,
    required TResult Function(LoginReset value) reset,
    required TResult Function(Authenticated value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperLogin value)? shopperLogin,
    TResult? Function(SupplierLogin value)? supplierLogin,
    TResult? Function(Logout value)? logout,
    TResult? Function(LoginReset value)? reset,
    TResult? Function(Authenticated value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperLogin value)? shopperLogin,
    TResult Function(SupplierLogin value)? supplierLogin,
    TResult Function(Logout value)? logout,
    TResult Function(LoginReset value)? reset,
    TResult Function(Authenticated value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements LoginEvent {
  const factory Authenticated(
      {final UserEntity? user,
      final String? token,
      required final bool isAuthenticated}) = _$Authenticated;

  UserEntity? get user;
  String? get token;
  bool get isAuthenticated;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get isAuthenticated => throw _privateConstructorUsedError;
  LoginDataStatus get status => throw _privateConstructorUsedError;
  bool get isShopper => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isAuthenticated,
      LoginDataStatus status,
      bool isShopper,
      UserEntity? user,
      String? token,
      String? message});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? status = null,
    Object? isShopper = null,
    Object? user = freezed,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginDataStatus,
      isShopper: null == isShopper
          ? _value.isShopper
          : isShopper // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthenticated,
      LoginDataStatus status,
      bool isShopper,
      UserEntity? user,
      String? token,
      String? message});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? status = null,
    Object? isShopper = null,
    Object? user = freezed,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_LoginState(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginDataStatus,
      isShopper: null == isShopper
          ? _value.isShopper
          : isShopper // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState extends _LoginState {
  const _$_LoginState(
      {required this.isAuthenticated,
      required this.status,
      required this.isShopper,
      this.user,
      this.token,
      this.message})
      : super._();

  @override
  final bool isAuthenticated;
  @override
  final LoginDataStatus status;
  @override
  final bool isShopper;
  @override
  final UserEntity? user;
  @override
  final String? token;
  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState(isAuthenticated: $isAuthenticated, status: $status, isShopper: $isShopper, user: $user, token: $token, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isShopper, isShopper) ||
                other.isShopper == isShopper) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isAuthenticated, status, isShopper, user, token, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {required final bool isAuthenticated,
      required final LoginDataStatus status,
      required final bool isShopper,
      final UserEntity? user,
      final String? token,
      final String? message}) = _$_LoginState;
  const _LoginState._() : super._();

  @override
  bool get isAuthenticated;
  @override
  LoginDataStatus get status;
  @override
  bool get isShopper;
  @override
  UserEntity? get user;
  @override
  String? get token;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
