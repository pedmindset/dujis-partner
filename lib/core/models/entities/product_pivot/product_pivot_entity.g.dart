// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_pivot_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPivotEntity _$$_ProductPivotEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ProductPivotEntity(
      orderId: json['order_id'] as int?,
      productId: json['product_id'] as int?,
      warehouseId: json['warehouse_id'] as int?,
      marketId: json['market_id'] as int?,
      warehouseQuantity: json['warehouse_quantity'] as int?,
      wholesalePrice: json['wholesale_price'] as int?,
      quantity: json['quantity'] as int?,
      price: json['price'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$_ProductPivotEntityToJson(
        _$_ProductPivotEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'warehouse_id': instance.warehouseId,
      'market_id': instance.marketId,
      'warehouse_quantity': instance.warehouseQuantity,
      'wholesale_price': instance.wholesalePrice,
      'quantity': instance.quantity,
      'price': instance.price,
      'size': instance.size,
    };
