// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
// int? id,
// int? market,
// int? active,
// String? uuid,
// String? name,
// String? quantity,
// String? price,
// String? description,
// String? featured,
// String? thumb,
// ProductPivotEntity? pivot,
// @JsonKey(name: 'product_category_id') int? productCategoryId,
// @JsonKey(name: 'wholesale_price') String? wholesalePrice,
// @JsonKey(name: 'cover_photo') String? coverPhoto,
  int? get id => throw _privateConstructorUsedError;
  int? get market => throw _privateConstructorUsedError; // int? active,
// String? uuid,
  String? get name => throw _privateConstructorUsedError; // String? slug,
// String? price,
// String? quantity,
// String? description,
// String? featured,
// String? code,
// String? barcode,
// String? thumb,
  ProductPivotEntity? get pivot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call({int? id, int? market, String? name, ProductPivotEntity? pivot});

  $ProductPivotEntityCopyWith<$Res>? get pivot;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? market = freezed,
    Object? name = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as ProductPivotEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductPivotEntityCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $ProductPivotEntityCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$_ProductEntityCopyWith(
          _$_ProductEntity value, $Res Function(_$_ProductEntity) then) =
      __$$_ProductEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? market, String? name, ProductPivotEntity? pivot});

  @override
  $ProductPivotEntityCopyWith<$Res>? get pivot;
}

/// @nodoc
class __$$_ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$_ProductEntity>
    implements _$$_ProductEntityCopyWith<$Res> {
  __$$_ProductEntityCopyWithImpl(
      _$_ProductEntity _value, $Res Function(_$_ProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? market = freezed,
    Object? name = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_$_ProductEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as ProductPivotEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductEntity implements _ProductEntity {
  _$_ProductEntity({this.id, this.market, this.name, this.pivot});

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

// int? id,
// int? market,
// int? active,
// String? uuid,
// String? name,
// String? quantity,
// String? price,
// String? description,
// String? featured,
// String? thumb,
// ProductPivotEntity? pivot,
// @JsonKey(name: 'product_category_id') int? productCategoryId,
// @JsonKey(name: 'wholesale_price') String? wholesalePrice,
// @JsonKey(name: 'cover_photo') String? coverPhoto,
  @override
  final int? id;
  @override
  final int? market;
// int? active,
// String? uuid,
  @override
  final String? name;
// String? slug,
// String? price,
// String? quantity,
// String? description,
// String? featured,
// String? code,
// String? barcode,
// String? thumb,
  @override
  final ProductPivotEntity? pivot;

  @override
  String toString() {
    return 'ProductEntity(id: $id, market: $market, name: $name, pivot: $pivot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pivot, pivot) || other.pivot == pivot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, market, name, pivot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      __$$_ProductEntityCopyWithImpl<_$_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductEntityToJson(
      this,
    );
  }
}

abstract class _ProductEntity implements ProductEntity {
  factory _ProductEntity(
      {final int? id,
      final int? market,
      final String? name,
      final ProductPivotEntity? pivot}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override // int? id,
// int? market,
// int? active,
// String? uuid,
// String? name,
// String? quantity,
// String? price,
// String? description,
// String? featured,
// String? thumb,
// ProductPivotEntity? pivot,
// @JsonKey(name: 'product_category_id') int? productCategoryId,
// @JsonKey(name: 'wholesale_price') String? wholesalePrice,
// @JsonKey(name: 'cover_photo') String? coverPhoto,
  int? get id;
  @override
  int? get market;
  @override // int? active,
// String? uuid,
  String? get name;
  @override // String? slug,
// String? price,
// String? quantity,
// String? description,
// String? featured,
// String? code,
// String? barcode,
// String? thumb,
  ProductPivotEntity? get pivot;
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
