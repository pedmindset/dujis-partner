import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_pivot_entity.freezed.dart';
part 'product_pivot_entity.g.dart';

@freezed
class ProductPivotEntity with _$ProductPivotEntity {
  factory ProductPivotEntity({
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'warehouse_id') int? warehouseId,
    @JsonKey(name: 'market_id') int? marketId,
    @JsonKey(name: 'warehouse_quantity') int? warehouseQuantity,
    @JsonKey(name: 'wholesale_price') int? wholesalePrice,
    int? quantity,
    String? price,
    String? size,
  }) = _ProductPivotEntity;

  factory ProductPivotEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductPivotEntityFromJson(json);
}
