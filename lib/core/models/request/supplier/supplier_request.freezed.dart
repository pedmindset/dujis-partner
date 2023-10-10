// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierRequest _$SupplierRequestFromJson(Map<String, dynamic> json) {
  return _SupplierRequest.fromJson(json);
}

/// @nodoc
mixin _$SupplierRequest {
  String get productId => throw _privateConstructorUsedError;
  String get marketId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierRequestCopyWith<SupplierRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierRequestCopyWith<$Res> {
  factory $SupplierRequestCopyWith(
          SupplierRequest value, $Res Function(SupplierRequest) then) =
      _$SupplierRequestCopyWithImpl<$Res, SupplierRequest>;
  @useResult
  $Res call({String productId, String marketId});
}

/// @nodoc
class _$SupplierRequestCopyWithImpl<$Res, $Val extends SupplierRequest>
    implements $SupplierRequestCopyWith<$Res> {
  _$SupplierRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? marketId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupplierRequestCopyWith<$Res>
    implements $SupplierRequestCopyWith<$Res> {
  factory _$$_SupplierRequestCopyWith(
          _$_SupplierRequest value, $Res Function(_$_SupplierRequest) then) =
      __$$_SupplierRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, String marketId});
}

/// @nodoc
class __$$_SupplierRequestCopyWithImpl<$Res>
    extends _$SupplierRequestCopyWithImpl<$Res, _$_SupplierRequest>
    implements _$$_SupplierRequestCopyWith<$Res> {
  __$$_SupplierRequestCopyWithImpl(
      _$_SupplierRequest _value, $Res Function(_$_SupplierRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? marketId = null,
  }) {
    return _then(_$_SupplierRequest(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupplierRequest implements _SupplierRequest {
  _$_SupplierRequest({required this.productId, required this.marketId});

  factory _$_SupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierRequestFromJson(json);

  @override
  final String productId;
  @override
  final String marketId;

  @override
  String toString() {
    return 'SupplierRequest(productId: $productId, marketId: $marketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierRequest &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, marketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierRequestCopyWith<_$_SupplierRequest> get copyWith =>
      __$$_SupplierRequestCopyWithImpl<_$_SupplierRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierRequestToJson(
      this,
    );
  }
}

abstract class _SupplierRequest implements SupplierRequest {
  factory _SupplierRequest(
      {required final String productId,
      required final String marketId}) = _$_SupplierRequest;

  factory _SupplierRequest.fromJson(Map<String, dynamic> json) =
      _$_SupplierRequest.fromJson;

  @override
  String get productId;
  @override
  String get marketId;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierRequestCopyWith<_$_SupplierRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
