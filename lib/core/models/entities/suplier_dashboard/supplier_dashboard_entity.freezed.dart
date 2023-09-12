// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_dashboard_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierDashboardEntity _$SupplierDashboardEntityFromJson(
    Map<String, dynamic> json) {
  return _SupplierDashboardEntity.fromJson(json);
}

/// @nodoc
mixin _$SupplierDashboardEntity {
  int? get confirm => throw _privateConstructorUsedError;
  int? get cancelled => throw _privateConstructorUsedError;
  int? get pending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierDashboardEntityCopyWith<SupplierDashboardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierDashboardEntityCopyWith<$Res> {
  factory $SupplierDashboardEntityCopyWith(SupplierDashboardEntity value,
          $Res Function(SupplierDashboardEntity) then) =
      _$SupplierDashboardEntityCopyWithImpl<$Res, SupplierDashboardEntity>;
  @useResult
  $Res call({int? confirm, int? cancelled, int? pending});
}

/// @nodoc
class _$SupplierDashboardEntityCopyWithImpl<$Res,
        $Val extends SupplierDashboardEntity>
    implements $SupplierDashboardEntityCopyWith<$Res> {
  _$SupplierDashboardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirm = freezed,
    Object? cancelled = freezed,
    Object? pending = freezed,
  }) {
    return _then(_value.copyWith(
      confirm: freezed == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelled: freezed == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int?,
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupplierDashboardEntityCopyWith<$Res>
    implements $SupplierDashboardEntityCopyWith<$Res> {
  factory _$$_SupplierDashboardEntityCopyWith(_$_SupplierDashboardEntity value,
          $Res Function(_$_SupplierDashboardEntity) then) =
      __$$_SupplierDashboardEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? confirm, int? cancelled, int? pending});
}

/// @nodoc
class __$$_SupplierDashboardEntityCopyWithImpl<$Res>
    extends _$SupplierDashboardEntityCopyWithImpl<$Res,
        _$_SupplierDashboardEntity>
    implements _$$_SupplierDashboardEntityCopyWith<$Res> {
  __$$_SupplierDashboardEntityCopyWithImpl(_$_SupplierDashboardEntity _value,
      $Res Function(_$_SupplierDashboardEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirm = freezed,
    Object? cancelled = freezed,
    Object? pending = freezed,
  }) {
    return _then(_$_SupplierDashboardEntity(
      confirm: freezed == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelled: freezed == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int?,
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupplierDashboardEntity implements _SupplierDashboardEntity {
  _$_SupplierDashboardEntity({this.confirm, this.cancelled, this.pending});

  factory _$_SupplierDashboardEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierDashboardEntityFromJson(json);

  @override
  final int? confirm;
  @override
  final int? cancelled;
  @override
  final int? pending;

  @override
  String toString() {
    return 'SupplierDashboardEntity(confirm: $confirm, cancelled: $cancelled, pending: $pending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierDashboardEntity &&
            (identical(other.confirm, confirm) || other.confirm == confirm) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled) &&
            (identical(other.pending, pending) || other.pending == pending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, confirm, cancelled, pending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierDashboardEntityCopyWith<_$_SupplierDashboardEntity>
      get copyWith =>
          __$$_SupplierDashboardEntityCopyWithImpl<_$_SupplierDashboardEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierDashboardEntityToJson(
      this,
    );
  }
}

abstract class _SupplierDashboardEntity implements SupplierDashboardEntity {
  factory _SupplierDashboardEntity(
      {final int? confirm,
      final int? cancelled,
      final int? pending}) = _$_SupplierDashboardEntity;

  factory _SupplierDashboardEntity.fromJson(Map<String, dynamic> json) =
      _$_SupplierDashboardEntity.fromJson;

  @override
  int? get confirm;
  @override
  int? get cancelled;
  @override
  int? get pending;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierDashboardEntityCopyWith<_$_SupplierDashboardEntity>
      get copyWith => throw _privateConstructorUsedError;
}
