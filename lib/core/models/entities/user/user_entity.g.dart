// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      code: json['code'] as String?,
      phone: json['phone'] as String?,
      profile: json['profile'] == null
          ? null
          : ProfileEntity.fromJson(json['profile'] as Map<String, dynamic>),
      shopper: json['shopper'] == null
          ? null
          : ShopperEntity.fromJson(json['shopper'] as Map<String, dynamic>),
      supplier: json['supplier'] == null
          ? null
          : SupplierEntity.fromJson(json['supplier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'code': instance.code,
      'phone': instance.phone,
      'profile': instance.profile,
      'shopper': instance.shopper,
      'supplier': instance.supplier,
    };
