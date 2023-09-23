// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      id: json['id'] as int?,
      market: json['market'] as int?,
      name: json['name'] as String?,
      pivot: json['pivot'] == null
          ? null
          : ProductPivotEntity.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'market': instance.market,
      'name': instance.name,
      'pivot': instance.pivot,
    };
