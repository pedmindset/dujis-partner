// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignedRequest _$AssignedRequestFromJson(Map<String, dynamic> json) {
  return _AssignedRequest.fromJson(json);
}

/// @nodoc
mixin _$AssignedRequest {
  String get orderId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get supplierId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignedRequestCopyWith<AssignedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedRequestCopyWith<$Res> {
  factory $AssignedRequestCopyWith(
          AssignedRequest value, $Res Function(AssignedRequest) then) =
      _$AssignedRequestCopyWithImpl<$Res, AssignedRequest>;
  @useResult
  $Res call({String orderId, String productId, String supplierId});
}

/// @nodoc
class _$AssignedRequestCopyWithImpl<$Res, $Val extends AssignedRequest>
    implements $AssignedRequestCopyWith<$Res> {
  _$AssignedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? supplierId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssignedRequestCopyWith<$Res>
    implements $AssignedRequestCopyWith<$Res> {
  factory _$$_AssignedRequestCopyWith(
          _$_AssignedRequest value, $Res Function(_$_AssignedRequest) then) =
      __$$_AssignedRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String productId, String supplierId});
}

/// @nodoc
class __$$_AssignedRequestCopyWithImpl<$Res>
    extends _$AssignedRequestCopyWithImpl<$Res, _$_AssignedRequest>
    implements _$$_AssignedRequestCopyWith<$Res> {
  __$$_AssignedRequestCopyWithImpl(
      _$_AssignedRequest _value, $Res Function(_$_AssignedRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? supplierId = null,
  }) {
    return _then(_$_AssignedRequest(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignedRequest implements _AssignedRequest {
  _$_AssignedRequest(
      {required this.orderId,
      required this.productId,
      required this.supplierId});

  factory _$_AssignedRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AssignedRequestFromJson(json);

  @override
  final String orderId;
  @override
  final String productId;
  @override
  final String supplierId;

  @override
  String toString() {
    return 'AssignedRequest(orderId: $orderId, productId: $productId, supplierId: $supplierId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignedRequest &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, productId, supplierId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignedRequestCopyWith<_$_AssignedRequest> get copyWith =>
      __$$_AssignedRequestCopyWithImpl<_$_AssignedRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignedRequestToJson(
      this,
    );
  }
}

abstract class _AssignedRequest implements AssignedRequest {
  factory _AssignedRequest(
      {required final String orderId,
      required final String productId,
      required final String supplierId}) = _$_AssignedRequest;

  factory _AssignedRequest.fromJson(Map<String, dynamic> json) =
      _$_AssignedRequest.fromJson;

  @override
  String get orderId;
  @override
  String get productId;
  @override
  String get supplierId;
  @override
  @JsonKey(ignore: true)
  _$$_AssignedRequestCopyWith<_$_AssignedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
