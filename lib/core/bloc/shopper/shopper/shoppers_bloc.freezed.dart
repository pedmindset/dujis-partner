// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoppers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SupplierRequest request) getSuppliers,
    required TResult Function(AssignedRequest request) assign,
    required TResult Function(PackagedRequest request) package,
    required TResult Function() assignReset,
    required TResult Function() packageReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SupplierRequest request)? getSuppliers,
    TResult? Function(AssignedRequest request)? assign,
    TResult? Function(PackagedRequest request)? package,
    TResult? Function()? assignReset,
    TResult? Function()? packageReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SupplierRequest request)? getSuppliers,
    TResult Function(AssignedRequest request)? assign,
    TResult Function(PackagedRequest request)? package,
    TResult Function()? assignReset,
    TResult Function()? packageReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuppliers value) getSuppliers,
    required TResult Function(AssignSupplier value) assign,
    required TResult Function(Packaged value) package,
    required TResult Function(AssignReset value) assignReset,
    required TResult Function(PackagedReset value) packageReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuppliers value)? getSuppliers,
    TResult? Function(AssignSupplier value)? assign,
    TResult? Function(Packaged value)? package,
    TResult? Function(AssignReset value)? assignReset,
    TResult? Function(PackagedReset value)? packageReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuppliers value)? getSuppliers,
    TResult Function(AssignSupplier value)? assign,
    TResult Function(Packaged value)? package,
    TResult Function(AssignReset value)? assignReset,
    TResult Function(PackagedReset value)? packageReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppersEventCopyWith<$Res> {
  factory $ShoppersEventCopyWith(
          ShoppersEvent value, $Res Function(ShoppersEvent) then) =
      _$ShoppersEventCopyWithImpl<$Res, ShoppersEvent>;
}

/// @nodoc
class _$ShoppersEventCopyWithImpl<$Res, $Val extends ShoppersEvent>
    implements $ShoppersEventCopyWith<$Res> {
  _$ShoppersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSuppliersCopyWith<$Res> {
  factory _$$GetSuppliersCopyWith(
          _$GetSuppliers value, $Res Function(_$GetSuppliers) then) =
      __$$GetSuppliersCopyWithImpl<$Res>;
  @useResult
  $Res call({SupplierRequest request});

  $SupplierRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetSuppliersCopyWithImpl<$Res>
    extends _$ShoppersEventCopyWithImpl<$Res, _$GetSuppliers>
    implements _$$GetSuppliersCopyWith<$Res> {
  __$$GetSuppliersCopyWithImpl(
      _$GetSuppliers _value, $Res Function(_$GetSuppliers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetSuppliers(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SupplierRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SupplierRequestCopyWith<$Res> get request {
    return $SupplierRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetSuppliers implements GetSuppliers {
  const _$GetSuppliers(this.request);

  @override
  final SupplierRequest request;

  @override
  String toString() {
    return 'ShoppersEvent.getSuppliers(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuppliers &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuppliersCopyWith<_$GetSuppliers> get copyWith =>
      __$$GetSuppliersCopyWithImpl<_$GetSuppliers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SupplierRequest request) getSuppliers,
    required TResult Function(AssignedRequest request) assign,
    required TResult Function(PackagedRequest request) package,
    required TResult Function() assignReset,
    required TResult Function() packageReset,
  }) {
    return getSuppliers(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SupplierRequest request)? getSuppliers,
    TResult? Function(AssignedRequest request)? assign,
    TResult? Function(PackagedRequest request)? package,
    TResult? Function()? assignReset,
    TResult? Function()? packageReset,
  }) {
    return getSuppliers?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SupplierRequest request)? getSuppliers,
    TResult Function(AssignedRequest request)? assign,
    TResult Function(PackagedRequest request)? package,
    TResult Function()? assignReset,
    TResult Function()? packageReset,
    required TResult orElse(),
  }) {
    if (getSuppliers != null) {
      return getSuppliers(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuppliers value) getSuppliers,
    required TResult Function(AssignSupplier value) assign,
    required TResult Function(Packaged value) package,
    required TResult Function(AssignReset value) assignReset,
    required TResult Function(PackagedReset value) packageReset,
  }) {
    return getSuppliers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuppliers value)? getSuppliers,
    TResult? Function(AssignSupplier value)? assign,
    TResult? Function(Packaged value)? package,
    TResult? Function(AssignReset value)? assignReset,
    TResult? Function(PackagedReset value)? packageReset,
  }) {
    return getSuppliers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuppliers value)? getSuppliers,
    TResult Function(AssignSupplier value)? assign,
    TResult Function(Packaged value)? package,
    TResult Function(AssignReset value)? assignReset,
    TResult Function(PackagedReset value)? packageReset,
    required TResult orElse(),
  }) {
    if (getSuppliers != null) {
      return getSuppliers(this);
    }
    return orElse();
  }
}

abstract class GetSuppliers implements ShoppersEvent {
  const factory GetSuppliers(final SupplierRequest request) = _$GetSuppliers;

  SupplierRequest get request;
  @JsonKey(ignore: true)
  _$$GetSuppliersCopyWith<_$GetSuppliers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignSupplierCopyWith<$Res> {
  factory _$$AssignSupplierCopyWith(
          _$AssignSupplier value, $Res Function(_$AssignSupplier) then) =
      __$$AssignSupplierCopyWithImpl<$Res>;
  @useResult
  $Res call({AssignedRequest request});

  $AssignedRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AssignSupplierCopyWithImpl<$Res>
    extends _$ShoppersEventCopyWithImpl<$Res, _$AssignSupplier>
    implements _$$AssignSupplierCopyWith<$Res> {
  __$$AssignSupplierCopyWithImpl(
      _$AssignSupplier _value, $Res Function(_$AssignSupplier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AssignSupplier(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AssignedRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AssignedRequestCopyWith<$Res> get request {
    return $AssignedRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AssignSupplier implements AssignSupplier {
  const _$AssignSupplier(this.request);

  @override
  final AssignedRequest request;

  @override
  String toString() {
    return 'ShoppersEvent.assign(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignSupplier &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignSupplierCopyWith<_$AssignSupplier> get copyWith =>
      __$$AssignSupplierCopyWithImpl<_$AssignSupplier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SupplierRequest request) getSuppliers,
    required TResult Function(AssignedRequest request) assign,
    required TResult Function(PackagedRequest request) package,
    required TResult Function() assignReset,
    required TResult Function() packageReset,
  }) {
    return assign(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SupplierRequest request)? getSuppliers,
    TResult? Function(AssignedRequest request)? assign,
    TResult? Function(PackagedRequest request)? package,
    TResult? Function()? assignReset,
    TResult? Function()? packageReset,
  }) {
    return assign?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SupplierRequest request)? getSuppliers,
    TResult Function(AssignedRequest request)? assign,
    TResult Function(PackagedRequest request)? package,
    TResult Function()? assignReset,
    TResult Function()? packageReset,
    required TResult orElse(),
  }) {
    if (assign != null) {
      return assign(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuppliers value) getSuppliers,
    required TResult Function(AssignSupplier value) assign,
    required TResult Function(Packaged value) package,
    required TResult Function(AssignReset value) assignReset,
    required TResult Function(PackagedReset value) packageReset,
  }) {
    return assign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuppliers value)? getSuppliers,
    TResult? Function(AssignSupplier value)? assign,
    TResult? Function(Packaged value)? package,
    TResult? Function(AssignReset value)? assignReset,
    TResult? Function(PackagedReset value)? packageReset,
  }) {
    return assign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuppliers value)? getSuppliers,
    TResult Function(AssignSupplier value)? assign,
    TResult Function(Packaged value)? package,
    TResult Function(AssignReset value)? assignReset,
    TResult Function(PackagedReset value)? packageReset,
    required TResult orElse(),
  }) {
    if (assign != null) {
      return assign(this);
    }
    return orElse();
  }
}

abstract class AssignSupplier implements ShoppersEvent {
  const factory AssignSupplier(final AssignedRequest request) =
      _$AssignSupplier;

  AssignedRequest get request;
  @JsonKey(ignore: true)
  _$$AssignSupplierCopyWith<_$AssignSupplier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackagedCopyWith<$Res> {
  factory _$$PackagedCopyWith(
          _$Packaged value, $Res Function(_$Packaged) then) =
      __$$PackagedCopyWithImpl<$Res>;
  @useResult
  $Res call({PackagedRequest request});

  $PackagedRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$PackagedCopyWithImpl<$Res>
    extends _$ShoppersEventCopyWithImpl<$Res, _$Packaged>
    implements _$$PackagedCopyWith<$Res> {
  __$$PackagedCopyWithImpl(_$Packaged _value, $Res Function(_$Packaged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$Packaged(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as PackagedRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PackagedRequestCopyWith<$Res> get request {
    return $PackagedRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Packaged implements Packaged {
  const _$Packaged(this.request);

  @override
  final PackagedRequest request;

  @override
  String toString() {
    return 'ShoppersEvent.package(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Packaged &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedCopyWith<_$Packaged> get copyWith =>
      __$$PackagedCopyWithImpl<_$Packaged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SupplierRequest request) getSuppliers,
    required TResult Function(AssignedRequest request) assign,
    required TResult Function(PackagedRequest request) package,
    required TResult Function() assignReset,
    required TResult Function() packageReset,
  }) {
    return package(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SupplierRequest request)? getSuppliers,
    TResult? Function(AssignedRequest request)? assign,
    TResult? Function(PackagedRequest request)? package,
    TResult? Function()? assignReset,
    TResult? Function()? packageReset,
  }) {
    return package?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SupplierRequest request)? getSuppliers,
    TResult Function(AssignedRequest request)? assign,
    TResult Function(PackagedRequest request)? package,
    TResult Function()? assignReset,
    TResult Function()? packageReset,
    required TResult orElse(),
  }) {
    if (package != null) {
      return package(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuppliers value) getSuppliers,
    required TResult Function(AssignSupplier value) assign,
    required TResult Function(Packaged value) package,
    required TResult Function(AssignReset value) assignReset,
    required TResult Function(PackagedReset value) packageReset,
  }) {
    return package(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuppliers value)? getSuppliers,
    TResult? Function(AssignSupplier value)? assign,
    TResult? Function(Packaged value)? package,
    TResult? Function(AssignReset value)? assignReset,
    TResult? Function(PackagedReset value)? packageReset,
  }) {
    return package?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuppliers value)? getSuppliers,
    TResult Function(AssignSupplier value)? assign,
    TResult Function(Packaged value)? package,
    TResult Function(AssignReset value)? assignReset,
    TResult Function(PackagedReset value)? packageReset,
    required TResult orElse(),
  }) {
    if (package != null) {
      return package(this);
    }
    return orElse();
  }
}

abstract class Packaged implements ShoppersEvent {
  const factory Packaged(final PackagedRequest request) = _$Packaged;

  PackagedRequest get request;
  @JsonKey(ignore: true)
  _$$PackagedCopyWith<_$Packaged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignResetCopyWith<$Res> {
  factory _$$AssignResetCopyWith(
          _$AssignReset value, $Res Function(_$AssignReset) then) =
      __$$AssignResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssignResetCopyWithImpl<$Res>
    extends _$ShoppersEventCopyWithImpl<$Res, _$AssignReset>
    implements _$$AssignResetCopyWith<$Res> {
  __$$AssignResetCopyWithImpl(
      _$AssignReset _value, $Res Function(_$AssignReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssignReset implements AssignReset {
  const _$AssignReset();

  @override
  String toString() {
    return 'ShoppersEvent.assignReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssignReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SupplierRequest request) getSuppliers,
    required TResult Function(AssignedRequest request) assign,
    required TResult Function(PackagedRequest request) package,
    required TResult Function() assignReset,
    required TResult Function() packageReset,
  }) {
    return assignReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SupplierRequest request)? getSuppliers,
    TResult? Function(AssignedRequest request)? assign,
    TResult? Function(PackagedRequest request)? package,
    TResult? Function()? assignReset,
    TResult? Function()? packageReset,
  }) {
    return assignReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SupplierRequest request)? getSuppliers,
    TResult Function(AssignedRequest request)? assign,
    TResult Function(PackagedRequest request)? package,
    TResult Function()? assignReset,
    TResult Function()? packageReset,
    required TResult orElse(),
  }) {
    if (assignReset != null) {
      return assignReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuppliers value) getSuppliers,
    required TResult Function(AssignSupplier value) assign,
    required TResult Function(Packaged value) package,
    required TResult Function(AssignReset value) assignReset,
    required TResult Function(PackagedReset value) packageReset,
  }) {
    return assignReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuppliers value)? getSuppliers,
    TResult? Function(AssignSupplier value)? assign,
    TResult? Function(Packaged value)? package,
    TResult? Function(AssignReset value)? assignReset,
    TResult? Function(PackagedReset value)? packageReset,
  }) {
    return assignReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuppliers value)? getSuppliers,
    TResult Function(AssignSupplier value)? assign,
    TResult Function(Packaged value)? package,
    TResult Function(AssignReset value)? assignReset,
    TResult Function(PackagedReset value)? packageReset,
    required TResult orElse(),
  }) {
    if (assignReset != null) {
      return assignReset(this);
    }
    return orElse();
  }
}

abstract class AssignReset implements ShoppersEvent {
  const factory AssignReset() = _$AssignReset;
}

/// @nodoc
abstract class _$$PackagedResetCopyWith<$Res> {
  factory _$$PackagedResetCopyWith(
          _$PackagedReset value, $Res Function(_$PackagedReset) then) =
      __$$PackagedResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PackagedResetCopyWithImpl<$Res>
    extends _$ShoppersEventCopyWithImpl<$Res, _$PackagedReset>
    implements _$$PackagedResetCopyWith<$Res> {
  __$$PackagedResetCopyWithImpl(
      _$PackagedReset _value, $Res Function(_$PackagedReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PackagedReset implements PackagedReset {
  const _$PackagedReset();

  @override
  String toString() {
    return 'ShoppersEvent.packageReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PackagedReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SupplierRequest request) getSuppliers,
    required TResult Function(AssignedRequest request) assign,
    required TResult Function(PackagedRequest request) package,
    required TResult Function() assignReset,
    required TResult Function() packageReset,
  }) {
    return packageReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SupplierRequest request)? getSuppliers,
    TResult? Function(AssignedRequest request)? assign,
    TResult? Function(PackagedRequest request)? package,
    TResult? Function()? assignReset,
    TResult? Function()? packageReset,
  }) {
    return packageReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SupplierRequest request)? getSuppliers,
    TResult Function(AssignedRequest request)? assign,
    TResult Function(PackagedRequest request)? package,
    TResult Function()? assignReset,
    TResult Function()? packageReset,
    required TResult orElse(),
  }) {
    if (packageReset != null) {
      return packageReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuppliers value) getSuppliers,
    required TResult Function(AssignSupplier value) assign,
    required TResult Function(Packaged value) package,
    required TResult Function(AssignReset value) assignReset,
    required TResult Function(PackagedReset value) packageReset,
  }) {
    return packageReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuppliers value)? getSuppliers,
    TResult? Function(AssignSupplier value)? assign,
    TResult? Function(Packaged value)? package,
    TResult? Function(AssignReset value)? assignReset,
    TResult? Function(PackagedReset value)? packageReset,
  }) {
    return packageReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuppliers value)? getSuppliers,
    TResult Function(AssignSupplier value)? assign,
    TResult Function(Packaged value)? package,
    TResult Function(AssignReset value)? assignReset,
    TResult Function(PackagedReset value)? packageReset,
    required TResult orElse(),
  }) {
    if (packageReset != null) {
      return packageReset(this);
    }
    return orElse();
  }
}

abstract class PackagedReset implements ShoppersEvent {
  const factory PackagedReset() = _$PackagedReset;
}

/// @nodoc
mixin _$ShoppersState {
  ShopperDataStatus get assignStatus => throw _privateConstructorUsedError;
  ShopperDataStatus get packagedStatus => throw _privateConstructorUsedError;
  ShopperDataStatus get suppliersStatus => throw _privateConstructorUsedError;
  List<SupplierEntity> get suppliers => throw _privateConstructorUsedError;
  String? get assignId => throw _privateConstructorUsedError;
  String? get assignResponse => throw _privateConstructorUsedError;
  String? get packagedResponse => throw _privateConstructorUsedError;
  String? get supplierResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppersStateCopyWith<ShoppersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppersStateCopyWith<$Res> {
  factory $ShoppersStateCopyWith(
          ShoppersState value, $Res Function(ShoppersState) then) =
      _$ShoppersStateCopyWithImpl<$Res, ShoppersState>;
  @useResult
  $Res call(
      {ShopperDataStatus assignStatus,
      ShopperDataStatus packagedStatus,
      ShopperDataStatus suppliersStatus,
      List<SupplierEntity> suppliers,
      String? assignId,
      String? assignResponse,
      String? packagedResponse,
      String? supplierResponse});
}

/// @nodoc
class _$ShoppersStateCopyWithImpl<$Res, $Val extends ShoppersState>
    implements $ShoppersStateCopyWith<$Res> {
  _$ShoppersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignStatus = null,
    Object? packagedStatus = null,
    Object? suppliersStatus = null,
    Object? suppliers = null,
    Object? assignId = freezed,
    Object? assignResponse = freezed,
    Object? packagedResponse = freezed,
    Object? supplierResponse = freezed,
  }) {
    return _then(_value.copyWith(
      assignStatus: null == assignStatus
          ? _value.assignStatus
          : assignStatus // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      packagedStatus: null == packagedStatus
          ? _value.packagedStatus
          : packagedStatus // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      suppliersStatus: null == suppliersStatus
          ? _value.suppliersStatus
          : suppliersStatus // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      suppliers: null == suppliers
          ? _value.suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<SupplierEntity>,
      assignId: freezed == assignId
          ? _value.assignId
          : assignId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignResponse: freezed == assignResponse
          ? _value.assignResponse
          : assignResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      packagedResponse: freezed == packagedResponse
          ? _value.packagedResponse
          : packagedResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierResponse: freezed == supplierResponse
          ? _value.supplierResponse
          : supplierResponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppersStateCopyWith<$Res>
    implements $ShoppersStateCopyWith<$Res> {
  factory _$$_ShoppersStateCopyWith(
          _$_ShoppersState value, $Res Function(_$_ShoppersState) then) =
      __$$_ShoppersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShopperDataStatus assignStatus,
      ShopperDataStatus packagedStatus,
      ShopperDataStatus suppliersStatus,
      List<SupplierEntity> suppliers,
      String? assignId,
      String? assignResponse,
      String? packagedResponse,
      String? supplierResponse});
}

/// @nodoc
class __$$_ShoppersStateCopyWithImpl<$Res>
    extends _$ShoppersStateCopyWithImpl<$Res, _$_ShoppersState>
    implements _$$_ShoppersStateCopyWith<$Res> {
  __$$_ShoppersStateCopyWithImpl(
      _$_ShoppersState _value, $Res Function(_$_ShoppersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignStatus = null,
    Object? packagedStatus = null,
    Object? suppliersStatus = null,
    Object? suppliers = null,
    Object? assignId = freezed,
    Object? assignResponse = freezed,
    Object? packagedResponse = freezed,
    Object? supplierResponse = freezed,
  }) {
    return _then(_$_ShoppersState(
      assignStatus: null == assignStatus
          ? _value.assignStatus
          : assignStatus // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      packagedStatus: null == packagedStatus
          ? _value.packagedStatus
          : packagedStatus // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      suppliersStatus: null == suppliersStatus
          ? _value.suppliersStatus
          : suppliersStatus // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      suppliers: null == suppliers
          ? _value._suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<SupplierEntity>,
      assignId: freezed == assignId
          ? _value.assignId
          : assignId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignResponse: freezed == assignResponse
          ? _value.assignResponse
          : assignResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      packagedResponse: freezed == packagedResponse
          ? _value.packagedResponse
          : packagedResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierResponse: freezed == supplierResponse
          ? _value.supplierResponse
          : supplierResponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShoppersState extends _ShoppersState {
  const _$_ShoppersState(
      {required this.assignStatus,
      required this.packagedStatus,
      required this.suppliersStatus,
      required final List<SupplierEntity> suppliers,
      this.assignId,
      this.assignResponse,
      this.packagedResponse,
      this.supplierResponse})
      : _suppliers = suppliers,
        super._();

  @override
  final ShopperDataStatus assignStatus;
  @override
  final ShopperDataStatus packagedStatus;
  @override
  final ShopperDataStatus suppliersStatus;
  final List<SupplierEntity> _suppliers;
  @override
  List<SupplierEntity> get suppliers {
    if (_suppliers is EqualUnmodifiableListView) return _suppliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliers);
  }

  @override
  final String? assignId;
  @override
  final String? assignResponse;
  @override
  final String? packagedResponse;
  @override
  final String? supplierResponse;

  @override
  String toString() {
    return 'ShoppersState(assignStatus: $assignStatus, packagedStatus: $packagedStatus, suppliersStatus: $suppliersStatus, suppliers: $suppliers, assignId: $assignId, assignResponse: $assignResponse, packagedResponse: $packagedResponse, supplierResponse: $supplierResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppersState &&
            (identical(other.assignStatus, assignStatus) ||
                other.assignStatus == assignStatus) &&
            (identical(other.packagedStatus, packagedStatus) ||
                other.packagedStatus == packagedStatus) &&
            (identical(other.suppliersStatus, suppliersStatus) ||
                other.suppliersStatus == suppliersStatus) &&
            const DeepCollectionEquality()
                .equals(other._suppliers, _suppliers) &&
            (identical(other.assignId, assignId) ||
                other.assignId == assignId) &&
            (identical(other.assignResponse, assignResponse) ||
                other.assignResponse == assignResponse) &&
            (identical(other.packagedResponse, packagedResponse) ||
                other.packagedResponse == packagedResponse) &&
            (identical(other.supplierResponse, supplierResponse) ||
                other.supplierResponse == supplierResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      assignStatus,
      packagedStatus,
      suppliersStatus,
      const DeepCollectionEquality().hash(_suppliers),
      assignId,
      assignResponse,
      packagedResponse,
      supplierResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppersStateCopyWith<_$_ShoppersState> get copyWith =>
      __$$_ShoppersStateCopyWithImpl<_$_ShoppersState>(this, _$identity);
}

abstract class _ShoppersState extends ShoppersState {
  const factory _ShoppersState(
      {required final ShopperDataStatus assignStatus,
      required final ShopperDataStatus packagedStatus,
      required final ShopperDataStatus suppliersStatus,
      required final List<SupplierEntity> suppliers,
      final String? assignId,
      final String? assignResponse,
      final String? packagedResponse,
      final String? supplierResponse}) = _$_ShoppersState;
  const _ShoppersState._() : super._();

  @override
  ShopperDataStatus get assignStatus;
  @override
  ShopperDataStatus get packagedStatus;
  @override
  ShopperDataStatus get suppliersStatus;
  @override
  List<SupplierEntity> get suppliers;
  @override
  String? get assignId;
  @override
  String? get assignResponse;
  @override
  String? get packagedResponse;
  @override
  String? get supplierResponse;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppersStateCopyWith<_$_ShoppersState> get copyWith =>
      throw _privateConstructorUsedError;
}
