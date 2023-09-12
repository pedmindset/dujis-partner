// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      productCategoryId: json['product_category_id'] as int?,
      wholesalePrice: json['wholesale_price'] as String?,
      coverPhoto: json['cover_photo'] as String?,
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      market: json['market'] as int?,
      active: json['active'] as int?,
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
      featured: json['featured'] as String?,
      thumb: json['thumb'] as String?,
      pivot: json['pivot'] == null
          ? null
          : ProductPivotEntity.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'product_category_id': instance.productCategoryId,
      'wholesale_price': instance.wholesalePrice,
      'cover_photo': instance.coverPhoto,
      'id': instance.id,
      'quantity': instance.quantity,
      'market': instance.market,
      'active': instance.active,
      'uuid': instance.uuid,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'featured': instance.featured,
      'thumb': instance.thumb,
      'pivot': instance.pivot,
    };
