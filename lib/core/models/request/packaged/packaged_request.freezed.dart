// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packaged_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackagedRequest _$PackagedRequestFromJson(Map<String, dynamic> json) {
  return _PackagedRequest.fromJson(json);
}

/// @nodoc
mixin _$PackagedRequest {
  String get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagedRequestCopyWith<PackagedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedRequestCopyWith<$Res> {
  factory $PackagedRequestCopyWith(
          PackagedRequest value, $Res Function(PackagedRequest) then) =
      _$PackagedRequestCopyWithImpl<$Res, PackagedRequest>;
  @useResult
  $Res call({String order});
}

/// @nodoc
class _$PackagedRequestCopyWithImpl<$Res, $Val extends PackagedRequest>
    implements $PackagedRequestCopyWith<$Res> {
  _$PackagedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackagedRequestCopyWith<$Res>
    implements $PackagedRequestCopyWith<$Res> {
  factory _$$_PackagedRequestCopyWith(
          _$_PackagedRequest value, $Res Function(_$_PackagedRequest) then) =
      __$$_PackagedRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String order});
}

/// @nodoc
class __$$_PackagedRequestCopyWithImpl<$Res>
    extends _$PackagedRequestCopyWithImpl<$Res, _$_PackagedRequest>
    implements _$$_PackagedRequestCopyWith<$Res> {
  __$$_PackagedRequestCopyWithImpl(
      _$_PackagedRequest _value, $Res Function(_$_PackagedRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$_PackagedRequest(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackagedRequest implements _PackagedRequest {
  _$_PackagedRequest({required this.order});

  factory _$_PackagedRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PackagedRequestFromJson(json);

  @override
  final String order;

  @override
  String toString() {
    return 'PackagedRequest(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackagedRequest &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackagedRequestCopyWith<_$_PackagedRequest> get copyWith =>
      __$$_PackagedRequestCopyWithImpl<_$_PackagedRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackagedRequestToJson(
      this,
    );
  }
}

abstract class _PackagedRequest implements PackagedRequest {
  factory _PackagedRequest({required final String order}) = _$_PackagedRequest;

  factory _PackagedRequest.fromJson(Map<String, dynamic> json) =
      _$_PackagedRequest.fromJson;

  @override
  String get order;
  @override
  @JsonKey(ignore: true)
  _$$_PackagedRequestCopyWith<_$_PackagedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
