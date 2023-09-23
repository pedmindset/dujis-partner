import 'package:dujis_partner/core/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  factory OrderEntity({
    int? id,
    int? paid,
    int? delivered,
    int? delayed,
    int? packaged,
    int? cancelled,
    int? assigned,
    int? verified,
    int? picked,
    String? uuid,
    String? code,
    String? amount,
    String? status,
    String? lng,
    String? lat,
    String? link,
    String? location,
    String? address,
    String? discount,
    String? notes,
    UserEntity? user,
    WarehouseEntity? warehouse,
    ShopperEntity? shopper,
    MarketEntity? market,
    List<ProductEntity>? products,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'shopper_id') int? shopperId,
    @JsonKey(name: 'warehouse_id') int? warehouseId,
    @JsonKey(name: 'market_id') int? marketId,
    @JsonKey(name: 'shipping_id') int? shippingId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'packaged_at') String? packagedAt,
    @JsonKey(name: 'picked_at') String? pickedAt,
    @JsonKey(name: 'delivery_address') DeliveryAddressEntity? deliveryAddress,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
