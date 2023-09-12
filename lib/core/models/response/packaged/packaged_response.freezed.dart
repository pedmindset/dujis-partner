// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packaged_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackagedResponse _$PackagedResponseFromJson(Map<String, dynamic> json) {
  return _PackagedResponse.fromJson(json);
}

/// @nodoc
mixin _$PackagedResponse {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedResponseCopyWith<$Res> {
  factory $PackagedResponseCopyWith(
          PackagedResponse value, $Res Function(PackagedResponse) then) =
      _$PackagedResponseCopyWithImpl<$Res, PackagedResponse>;
}

/// @nodoc
class _$PackagedResponseCopyWithImpl<$Res, $Val extends PackagedResponse>
    implements $PackagedResponseCopyWith<$Res> {
  _$PackagedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PackagedResponseCopyWith<$Res> {
  factory _$$_PackagedResponseCopyWith(
          _$_PackagedResponse value, $Res Function(_$_PackagedResponse) then) =
      __$$_PackagedResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PackagedResponseCopyWithImpl<$Res>
    extends _$PackagedResponseCopyWithImpl<$Res, _$_PackagedResponse>
    implements _$$_PackagedResponseCopyWith<$Res> {
  __$$_PackagedResponseCopyWithImpl(
      _$_PackagedResponse _value, $Res Function(_$_PackagedResponse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_PackagedResponse implements _PackagedResponse {
  _$_PackagedResponse();

  factory _$_PackagedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PackagedResponseFromJson(json);

  @override
  String toString() {
    return 'PackagedResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PackagedResponse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackagedResponseToJson(
      this,
    );
  }
}

abstract class _PackagedResponse implements PackagedResponse {
  factory _PackagedResponse() = _$_PackagedResponse;

  factory _PackagedResponse.fromJson(Map<String, dynamic> json) =
      _$_PackagedResponse.fromJson;
}
