// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierEntity _$$_SupplierEntityFromJson(Map<String, dynamic> json) =>
    _$_SupplierEntity(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      marketId: json['market_id'] as int?,
      type: json['type'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_SupplierEntityToJson(_$_SupplierEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'market_id': instance.marketId,
      'type': instance.type,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'address': instance.address,
      'city': instance.city,
      'name': instance.name,
      'description': instance.description,
    };
