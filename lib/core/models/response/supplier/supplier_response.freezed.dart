// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierResponse _$SupplierResponseFromJson(Map<String, dynamic> json) {
  return _SupplierResponse.fromJson(json);
}

/// @nodoc
mixin _$SupplierResponse {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierResponseCopyWith<$Res> {
  factory $SupplierResponseCopyWith(
          SupplierResponse value, $Res Function(SupplierResponse) then) =
      _$SupplierResponseCopyWithImpl<$Res, SupplierResponse>;
}

/// @nodoc
class _$SupplierResponseCopyWithImpl<$Res, $Val extends SupplierResponse>
    implements $SupplierResponseCopyWith<$Res> {
  _$SupplierResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SupplierResponseCopyWith<$Res> {
  factory _$$_SupplierResponseCopyWith(
          _$_SupplierResponse value, $Res Function(_$_SupplierResponse) then) =
      __$$_SupplierResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SupplierResponseCopyWithImpl<$Res>
    extends _$SupplierResponseCopyWithImpl<$Res, _$_SupplierResponse>
    implements _$$_SupplierResponseCopyWith<$Res> {
  __$$_SupplierResponseCopyWithImpl(
      _$_SupplierResponse _value, $Res Function(_$_SupplierResponse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_SupplierResponse implements _SupplierResponse {
  _$_SupplierResponse();

  factory _$_SupplierResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierResponseFromJson(json);

  @override
  String toString() {
    return 'SupplierResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SupplierResponse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierResponseToJson(
      this,
    );
  }
}

abstract class _SupplierResponse implements SupplierResponse {
  factory _SupplierResponse() = _$_SupplierResponse;

  factory _SupplierResponse.fromJson(Map<String, dynamic> json) =
      _$_SupplierResponse.fromJson;
}
