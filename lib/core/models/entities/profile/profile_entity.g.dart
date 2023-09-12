// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEntity _$$_ProfileEntityFromJson(Map<String, dynamic> json) =>
    _$_ProfileEntity(
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      profileImage: json['thumb_image_url'] as String?,
    );

Map<String, dynamic> _$$_ProfileEntityToJson(_$_ProfileEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'thumb_image_url': instance.profileImage,
    };
