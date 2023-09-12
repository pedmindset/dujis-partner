// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketEntity _$$_MarketEntityFromJson(Map<String, dynamic> json) =>
    _$_MarketEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$$_MarketEntityToJson(_$_MarketEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'description': instance.description,
      'city': instance.city,
      'region': instance.region,
    };
