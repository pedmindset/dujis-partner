// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignedResponse _$AssignedResponseFromJson(Map<String, dynamic> json) {
  return _AssignedResponse.fromJson(json);
}

/// @nodoc
mixin _$AssignedResponse {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedResponseCopyWith<$Res> {
  factory $AssignedResponseCopyWith(
          AssignedResponse value, $Res Function(AssignedResponse) then) =
      _$AssignedResponseCopyWithImpl<$Res, AssignedResponse>;
}

/// @nodoc
class _$AssignedResponseCopyWithImpl<$Res, $Val extends AssignedResponse>
    implements $AssignedResponseCopyWith<$Res> {
  _$AssignedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AssignedResponseCopyWith<$Res> {
  factory _$$_AssignedResponseCopyWith(
          _$_AssignedResponse value, $Res Function(_$_AssignedResponse) then) =
      __$$_AssignedResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AssignedResponseCopyWithImpl<$Res>
    extends _$AssignedResponseCopyWithImpl<$Res, _$_AssignedResponse>
    implements _$$_AssignedResponseCopyWith<$Res> {
  __$$_AssignedResponseCopyWithImpl(
      _$_AssignedResponse _value, $Res Function(_$_AssignedResponse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AssignedResponse implements _AssignedResponse {
  _$_AssignedResponse();

  factory _$_AssignedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AssignedResponseFromJson(json);

  @override
  String toString() {
    return 'AssignedResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AssignedResponse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignedResponseToJson(
      this,
    );
  }
}

abstract class _AssignedResponse implements AssignedResponse {
  factory _AssignedResponse() = _$_AssignedResponse;

  factory _AssignedResponse.fromJson(Map<String, dynamic> json) =
      _$_AssignedResponse.fromJson;
}
