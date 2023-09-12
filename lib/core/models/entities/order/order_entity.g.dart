// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      driverId: json['driver_id'] as int?,
      shopperId: json['shopper_id'] as int?,
      warehouseId: json['warehouse_id'] as int?,
      marketId: json['market_id'] as int?,
      shippingId: json['shipping_id'] as int?,
      createdAt: json['created_at'] as String?,
      deliveryAddress: json['delivery_address'] == null
          ? null
          : DeliveryAddressEntity.fromJson(
              json['delivery_address'] as Map<String, dynamic>),
      paid: json['paid'] as int?,
      delivered: json['delivered'] as int?,
      delayed: json['delayed'] as int?,
      packaged: json['packaged'] as int?,
      cancelled: json['cancelled'] as int?,
      assigned: json['assigned'] as int?,
      uuid: json['uuid'] as String?,
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      status: json['status'] as String?,
      lng: json['lng'] as String?,
      lat: json['lat'] as String?,
      link: json['link'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      user: json['user'] == null
          ? null
          : UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      warehouse: json['warehouse'] == null
          ? null
          : WarehouseEntity.fromJson(json['warehouse'] as Map<String, dynamic>),
      shopper: json['shopper'] == null
          ? null
          : ShopperEntity.fromJson(json['shopper'] as Map<String, dynamic>),
      market: json['market'] == null
          ? null
          : MarketEntity.fromJson(json['market'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'driver_id': instance.driverId,
      'shopper_id': instance.shopperId,
      'warehouse_id': instance.warehouseId,
      'market_id': instance.marketId,
      'shipping_id': instance.shippingId,
      'created_at': instance.createdAt,
      'delivery_address': instance.deliveryAddress,
      'paid': instance.paid,
      'delivered': instance.delivered,
      'delayed': instance.delayed,
      'packaged': instance.packaged,
      'cancelled': instance.cancelled,
      'assigned': instance.assigned,
      'uuid': instance.uuid,
      'code': instance.code,
      'amount': instance.amount,
      'status': instance.status,
      'lng': instance.lng,
      'lat': instance.lat,
      'link': instance.link,
      'location': instance.location,
      'address': instance.address,
      'user': instance.user,
      'warehouse': instance.warehouse,
      'shopper': instance.shopper,
      'market': instance.market,
      'products': instance.products,
    };
