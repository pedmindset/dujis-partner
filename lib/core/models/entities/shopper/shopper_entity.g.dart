// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopper_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopperEntity _$$_ShopperEntityFromJson(Map<String, dynamic> json) =>
    _$_ShopperEntity(
      id: json['id'] as int?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      commission: json['commission'] as String?,
      network: json['network'] as String?,
      userId: json['user_id'] as int?,
      marketId: json['market_id'] as int?,
      momoNumber: json['momo_number'] as String?,
    );

Map<String, dynamic> _$$_ShopperEntityToJson(_$_ShopperEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'city': instance.city,
      'region': instance.region,
      'name': instance.name,
      'phone': instance.phone,
      'commission': instance.commission,
      'network': instance.network,
      'user_id': instance.userId,
      'market_id': instance.marketId,
      'momo_number': instance.momoNumber,
    };
