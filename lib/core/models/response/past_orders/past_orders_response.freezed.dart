// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'past_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PastOrdersResponse _$PastOrdersResponseFromJson(Map<String, dynamic> json) {
  return _PastOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$PastOrdersResponse {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastOrdersResponseCopyWith<$Res> {
  factory $PastOrdersResponseCopyWith(
          PastOrdersResponse value, $Res Function(PastOrdersResponse) then) =
      _$PastOrdersResponseCopyWithImpl<$Res, PastOrdersResponse>;
}

/// @nodoc
class _$PastOrdersResponseCopyWithImpl<$Res, $Val extends PastOrdersResponse>
    implements $PastOrdersResponseCopyWith<$Res> {
  _$PastOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PastOrdersResponseCopyWith<$Res> {
  factory _$$_PastOrdersResponseCopyWith(_$_PastOrdersResponse value,
          $Res Function(_$_PastOrdersResponse) then) =
      __$$_PastOrdersResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PastOrdersResponseCopyWithImpl<$Res>
    extends _$PastOrdersResponseCopyWithImpl<$Res, _$_PastOrdersResponse>
    implements _$$_PastOrdersResponseCopyWith<$Res> {
  __$$_PastOrdersResponseCopyWithImpl(
      _$_PastOrdersResponse _value, $Res Function(_$_PastOrdersResponse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_PastOrdersResponse implements _PastOrdersResponse {
  _$_PastOrdersResponse();

  factory _$_PastOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PastOrdersResponseFromJson(json);

  @override
  String toString() {
    return 'PastOrdersResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PastOrdersResponse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_PastOrdersResponseToJson(
      this,
    );
  }
}

abstract class _PastOrdersResponse implements PastOrdersResponse {
  factory _PastOrdersResponse() = _$_PastOrdersResponse;

  factory _PastOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_PastOrdersResponse.fromJson;
}
