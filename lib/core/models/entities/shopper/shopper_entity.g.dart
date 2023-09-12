// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopper_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopperEntity _$$_ShopperEntityFromJson(Map<String, dynamic> json) =>
    _$_ShopperEntity(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      marketId: json['market_id'] as int?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      commission: json['commission'] as String?,
    );

Map<String, dynamic> _$$_ShopperEntityToJson(_$_ShopperEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'market_id': instance.marketId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'city': instance.city,
      'name': instance.name,
      'phone': instance.phone,
      'commission': instance.commission,
    };
