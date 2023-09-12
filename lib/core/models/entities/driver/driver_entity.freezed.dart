// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverEntity _$DriverEntityFromJson(Map<String, dynamic> json) {
  return _DriverEntity.fromJson(json);
}

/// @nodoc
mixin _$DriverEntity {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEntityCopyWith<$Res> {
  factory $DriverEntityCopyWith(
          DriverEntity value, $Res Function(DriverEntity) then) =
      _$DriverEntityCopyWithImpl<$Res, DriverEntity>;
}

/// @nodoc
class _$DriverEntityCopyWithImpl<$Res, $Val extends DriverEntity>
    implements $DriverEntityCopyWith<$Res> {
  _$DriverEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DriverEntityCopyWith<$Res> {
  factory _$$_DriverEntityCopyWith(
          _$_DriverEntity value, $Res Function(_$_DriverEntity) then) =
      __$$_DriverEntityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DriverEntityCopyWithImpl<$Res>
    extends _$DriverEntityCopyWithImpl<$Res, _$_DriverEntity>
    implements _$$_DriverEntityCopyWith<$Res> {
  __$$_DriverEntityCopyWithImpl(
      _$_DriverEntity _value, $Res Function(_$_DriverEntity) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_DriverEntity implements _DriverEntity {
  _$_DriverEntity();

  factory _$_DriverEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DriverEntityFromJson(json);

  @override
  String toString() {
    return 'DriverEntity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DriverEntity);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverEntityToJson(
      this,
    );
  }
}

abstract class _DriverEntity implements DriverEntity {
  factory _DriverEntity() = _$_DriverEntity;

  factory _DriverEntity.fromJson(Map<String, dynamic> json) =
      _$_DriverEntity.fromJson;
}
