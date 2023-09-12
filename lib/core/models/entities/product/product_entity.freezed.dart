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
  @JsonKey(name: 'product_category_id')
  int? get productCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'wholesale_price')
  String? get wholesalePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_photo')
  String? get coverPhoto => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get market => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get featured => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
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
  $Res call(
      {@JsonKey(name: 'product_category_id') int? productCategoryId,
      @JsonKey(name: 'wholesale_price') String? wholesalePrice,
      @JsonKey(name: 'cover_photo') String? coverPhoto,
      int? id,
      int? quantity,
      int? market,
      int? active,
      String? uuid,
      String? name,
      String? price,
      String? description,
      String? featured,
      String? thumb,
      ProductPivotEntity? pivot});

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
    Object? productCategoryId = freezed,
    Object? wholesalePrice = freezed,
    Object? coverPhoto = freezed,
    Object? id = freezed,
    Object? quantity = freezed,
    Object? market = freezed,
    Object? active = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? featured = freezed,
    Object? thumb = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_value.copyWith(
      productCategoryId: freezed == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesalePrice: freezed == wholesalePrice
          ? _value.wholesalePrice
          : wholesalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: 'product_category_id') int? productCategoryId,
      @JsonKey(name: 'wholesale_price') String? wholesalePrice,
      @JsonKey(name: 'cover_photo') String? coverPhoto,
      int? id,
      int? quantity,
      int? market,
      int? active,
      String? uuid,
      String? name,
      String? price,
      String? description,
      String? featured,
      String? thumb,
      ProductPivotEntity? pivot});

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
    Object? productCategoryId = freezed,
    Object? wholesalePrice = freezed,
    Object? coverPhoto = freezed,
    Object? id = freezed,
    Object? quantity = freezed,
    Object? market = freezed,
    Object? active = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? featured = freezed,
    Object? thumb = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_$_ProductEntity(
      productCategoryId: freezed == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesalePrice: freezed == wholesalePrice
          ? _value.wholesalePrice
          : wholesalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
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
  _$_ProductEntity(
      {@JsonKey(name: 'product_category_id') this.productCategoryId,
      @JsonKey(name: 'wholesale_price') this.wholesalePrice,
      @JsonKey(name: 'cover_photo') this.coverPhoto,
      this.id,
      this.quantity,
      this.market,
      this.active,
      this.uuid,
      this.name,
      this.price,
      this.description,
      this.featured,
      this.thumb,
      this.pivot});

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

  @override
  @JsonKey(name: 'product_category_id')
  final int? productCategoryId;
  @override
  @JsonKey(name: 'wholesale_price')
  final String? wholesalePrice;
  @override
  @JsonKey(name: 'cover_photo')
  final String? coverPhoto;
  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final int? market;
  @override
  final int? active;
  @override
  final String? uuid;
  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? description;
  @override
  final String? featured;
  @override
  final String? thumb;
  @override
  final ProductPivotEntity? pivot;

  @override
  String toString() {
    return 'ProductEntity(productCategoryId: $productCategoryId, wholesalePrice: $wholesalePrice, coverPhoto: $coverPhoto, id: $id, quantity: $quantity, market: $market, active: $active, uuid: $uuid, name: $name, price: $price, description: $description, featured: $featured, thumb: $thumb, pivot: $pivot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntity &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId) &&
            (identical(other.wholesalePrice, wholesalePrice) ||
                other.wholesalePrice == wholesalePrice) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.pivot, pivot) || other.pivot == pivot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productCategoryId,
      wholesalePrice,
      coverPhoto,
      id,
      quantity,
      market,
      active,
      uuid,
      name,
      price,
      description,
      featured,
      thumb,
      pivot);

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
      {@JsonKey(name: 'product_category_id') final int? productCategoryId,
      @JsonKey(name: 'wholesale_price') final String? wholesalePrice,
      @JsonKey(name: 'cover_photo') final String? coverPhoto,
      final int? id,
      final int? quantity,
      final int? market,
      final int? active,
      final String? uuid,
      final String? name,
      final String? price,
      final String? description,
      final String? featured,
      final String? thumb,
      final ProductPivotEntity? pivot}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  @JsonKey(name: 'product_category_id')
  int? get productCategoryId;
  @override
  @JsonKey(name: 'wholesale_price')
  String? get wholesalePrice;
  @override
  @JsonKey(name: 'cover_photo')
  String? get coverPhoto;
  @override
  int? get id;
  @override
  int? get quantity;
  @override
  int? get market;
  @override
  int? get active;
  @override
  String? get uuid;
  @override
  String? get name;
  @override
  String? get price;
  @override
  String? get description;
  @override
  String? get featured;
  @override
  String? get thumb;
  @override
  ProductPivotEntity? get pivot;
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
