// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryAddressEntity _$$_DeliveryAddressEntityFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryAddressEntity(
      orderId: json['delivery_address'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      lat: json['lat'] as String?,
      long: json['long'] as String?,
    );

Map<String, dynamic> _$$_DeliveryAddressEntityToJson(
        _$_DeliveryAddressEntity instance) =>
    <String, dynamic>{
      'delivery_address': instance.orderId,
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'city': instance.city,
      'lat': instance.lat,
      'long': instance.long,
    };
