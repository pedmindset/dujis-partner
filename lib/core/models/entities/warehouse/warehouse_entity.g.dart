// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarehouseEntity _$$_WarehouseEntityFromJson(Map<String, dynamic> json) =>
    _$_WarehouseEntity(
      userId: json['user_id'],
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      active: json['active'] as String?,
      main: json['main'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_WarehouseEntityToJson(_$_WarehouseEntity instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'phone': instance.phone,
      'city': instance.city,
      'lat': instance.lat,
      'lng': instance.lng,
      'active': instance.active,
      'main': instance.main,
      'address': instance.address,
    };
