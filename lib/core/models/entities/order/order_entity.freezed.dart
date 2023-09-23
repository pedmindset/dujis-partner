// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get paid => throw _privateConstructorUsedError;
  int? get delivered => throw _privateConstructorUsedError;
  int? get delayed => throw _privateConstructorUsedError;
  int? get packaged => throw _privateConstructorUsedError;
  int? get cancelled => throw _privateConstructorUsedError;
  int? get assigned => throw _privateConstructorUsedError;
  int? get verified => throw _privateConstructorUsedError;
  int? get picked => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;
  WarehouseEntity? get warehouse => throw _privateConstructorUsedError;
  ShopperEntity? get shopper => throw _privateConstructorUsedError;
  MarketEntity? get market => throw _privateConstructorUsedError;
  List<ProductEntity>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shopper_id')
  int? get shopperId => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_id')
  int? get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_id')
  int? get marketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_id')
  int? get shippingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'packaged_at')
  String? get packagedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'picked_at')
  String? get pickedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_address')
  DeliveryAddressEntity? get deliveryAddress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'driver_id')
          int? driverId,
      @JsonKey(name: 'shopper_id')
          int? shopperId,
      @JsonKey(name: 'warehouse_id')
          int? warehouseId,
      @JsonKey(name: 'market_id')
          int? marketId,
      @JsonKey(name: 'shipping_id')
          int? shippingId,
      @JsonKey(name: 'created_at')
          String? createdAt,
      @JsonKey(name: 'packaged_at')
          String? packagedAt,
      @JsonKey(name: 'picked_at')
          String? pickedAt,
      @JsonKey(name: 'delivery_address')
          DeliveryAddressEntity? deliveryAddress});

  $UserEntityCopyWith<$Res>? get user;
  $WarehouseEntityCopyWith<$Res>? get warehouse;
  $ShopperEntityCopyWith<$Res>? get shopper;
  $MarketEntityCopyWith<$Res>? get market;
  $DeliveryAddressEntityCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paid = freezed,
    Object? delivered = freezed,
    Object? delayed = freezed,
    Object? packaged = freezed,
    Object? cancelled = freezed,
    Object? assigned = freezed,
    Object? verified = freezed,
    Object? picked = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
    Object? link = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? discount = freezed,
    Object? notes = freezed,
    Object? user = freezed,
    Object? warehouse = freezed,
    Object? shopper = freezed,
    Object? market = freezed,
    Object? products = freezed,
    Object? userId = freezed,
    Object? driverId = freezed,
    Object? shopperId = freezed,
    Object? warehouseId = freezed,
    Object? marketId = freezed,
    Object? shippingId = freezed,
    Object? createdAt = freezed,
    Object? packagedAt = freezed,
    Object? pickedAt = freezed,
    Object? deliveryAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as int?,
      delayed: freezed == delayed
          ? _value.delayed
          : delayed // ignore: cast_nullable_to_non_nullable
              as int?,
      packaged: freezed == packaged
          ? _value.packaged
          : packaged // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelled: freezed == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int?,
      assigned: freezed == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as int?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as int?,
      picked: freezed == picked
          ? _value.picked
          : picked // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as WarehouseEntity?,
      shopper: freezed == shopper
          ? _value.shopper
          : shopper // ignore: cast_nullable_to_non_nullable
              as ShopperEntity?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as MarketEntity?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      shopperId: freezed == shopperId
          ? _value.shopperId
          : shopperId // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      marketId: freezed == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      packagedAt: freezed == packagedAt
          ? _value.packagedAt
          : packagedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      pickedAt: freezed == pickedAt
          ? _value.pickedAt
          : pickedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseEntityCopyWith<$Res>? get warehouse {
    if (_value.warehouse == null) {
      return null;
    }

    return $WarehouseEntityCopyWith<$Res>(_value.warehouse!, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopperEntityCopyWith<$Res>? get shopper {
    if (_value.shopper == null) {
      return null;
    }

    return $ShopperEntityCopyWith<$Res>(_value.shopper!, (value) {
      return _then(_value.copyWith(shopper: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketEntityCopyWith<$Res>? get market {
    if (_value.market == null) {
      return null;
    }

    return $MarketEntityCopyWith<$Res>(_value.market!, (value) {
      return _then(_value.copyWith(market: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressEntityCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $DeliveryAddressEntityCopyWith<$Res>(_value.deliveryAddress!,
        (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$_OrderEntityCopyWith(
          _$_OrderEntity value, $Res Function(_$_OrderEntity) then) =
      __$$_OrderEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'driver_id')
          int? driverId,
      @JsonKey(name: 'shopper_id')
          int? shopperId,
      @JsonKey(name: 'warehouse_id')
          int? warehouseId,
      @JsonKey(name: 'market_id')
          int? marketId,
      @JsonKey(name: 'shipping_id')
          int? shippingId,
      @JsonKey(name: 'created_at')
          String? createdAt,
      @JsonKey(name: 'packaged_at')
          String? packagedAt,
      @JsonKey(name: 'picked_at')
          String? pickedAt,
      @JsonKey(name: 'delivery_address')
          DeliveryAddressEntity? deliveryAddress});

  @override
  $UserEntityCopyWith<$Res>? get user;
  @override
  $WarehouseEntityCopyWith<$Res>? get warehouse;
  @override
  $ShopperEntityCopyWith<$Res>? get shopper;
  @override
  $MarketEntityCopyWith<$Res>? get market;
  @override
  $DeliveryAddressEntityCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class __$$_OrderEntityCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$_OrderEntity>
    implements _$$_OrderEntityCopyWith<$Res> {
  __$$_OrderEntityCopyWithImpl(
      _$_OrderEntity _value, $Res Function(_$_OrderEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paid = freezed,
    Object? delivered = freezed,
    Object? delayed = freezed,
    Object? packaged = freezed,
    Object? cancelled = freezed,
    Object? assigned = freezed,
    Object? verified = freezed,
    Object? picked = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? lng = freezed,
    Object? lat = freezed,
    Object? link = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? discount = freezed,
    Object? notes = freezed,
    Object? user = freezed,
    Object? warehouse = freezed,
    Object? shopper = freezed,
    Object? market = freezed,
    Object? products = freezed,
    Object? userId = freezed,
    Object? driverId = freezed,
    Object? shopperId = freezed,
    Object? warehouseId = freezed,
    Object? marketId = freezed,
    Object? shippingId = freezed,
    Object? createdAt = freezed,
    Object? packagedAt = freezed,
    Object? pickedAt = freezed,
    Object? deliveryAddress = freezed,
  }) {
    return _then(_$_OrderEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as int?,
      delayed: freezed == delayed
          ? _value.delayed
          : delayed // ignore: cast_nullable_to_non_nullable
              as int?,
      packaged: freezed == packaged
          ? _value.packaged
          : packaged // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelled: freezed == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int?,
      assigned: freezed == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as int?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as int?,
      picked: freezed == picked
          ? _value.picked
          : picked // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as WarehouseEntity?,
      shopper: freezed == shopper
          ? _value.shopper
          : shopper // ignore: cast_nullable_to_non_nullable
              as ShopperEntity?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as MarketEntity?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      shopperId: freezed == shopperId
          ? _value.shopperId
          : shopperId // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      marketId: freezed == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      packagedAt: freezed == packagedAt
          ? _value.packagedAt
          : packagedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      pickedAt: freezed == pickedAt
          ? _value.pickedAt
          : pickedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  _$_OrderEntity(
      {this.id,
      this.paid,
      this.delivered,
      this.delayed,
      this.packaged,
      this.cancelled,
      this.assigned,
      this.verified,
      this.picked,
      this.uuid,
      this.code,
      this.amount,
      this.status,
      this.lng,
      this.lat,
      this.link,
      this.location,
      this.address,
      this.discount,
      this.notes,
      this.user,
      this.warehouse,
      this.shopper,
      this.market,
      final List<ProductEntity>? products,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'shopper_id') this.shopperId,
      @JsonKey(name: 'warehouse_id') this.warehouseId,
      @JsonKey(name: 'market_id') this.marketId,
      @JsonKey(name: 'shipping_id') this.shippingId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'packaged_at') this.packagedAt,
      @JsonKey(name: 'picked_at') this.pickedAt,
      @JsonKey(name: 'delivery_address') this.deliveryAddress})
      : _products = products;

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  final int? id;
  @override
  final int? paid;
  @override
  final int? delivered;
  @override
  final int? delayed;
  @override
  final int? packaged;
  @override
  final int? cancelled;
  @override
  final int? assigned;
  @override
  final int? verified;
  @override
  final int? picked;
  @override
  final String? uuid;
  @override
  final String? code;
  @override
  final String? amount;
  @override
  final String? status;
  @override
  final String? lng;
  @override
  final String? lat;
  @override
  final String? link;
  @override
  final String? location;
  @override
  final String? address;
  @override
  final String? discount;
  @override
  final String? notes;
  @override
  final UserEntity? user;
  @override
  final WarehouseEntity? warehouse;
  @override
  final ShopperEntity? shopper;
  @override
  final MarketEntity? market;
  final List<ProductEntity>? _products;
  @override
  List<ProductEntity>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'shopper_id')
  final int? shopperId;
  @override
  @JsonKey(name: 'warehouse_id')
  final int? warehouseId;
  @override
  @JsonKey(name: 'market_id')
  final int? marketId;
  @override
  @JsonKey(name: 'shipping_id')
  final int? shippingId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'packaged_at')
  final String? packagedAt;
  @override
  @JsonKey(name: 'picked_at')
  final String? pickedAt;
  @override
  @JsonKey(name: 'delivery_address')
  final DeliveryAddressEntity? deliveryAddress;

  @override
  String toString() {
    return 'OrderEntity(id: $id, paid: $paid, delivered: $delivered, delayed: $delayed, packaged: $packaged, cancelled: $cancelled, assigned: $assigned, verified: $verified, picked: $picked, uuid: $uuid, code: $code, amount: $amount, status: $status, lng: $lng, lat: $lat, link: $link, location: $location, address: $address, discount: $discount, notes: $notes, user: $user, warehouse: $warehouse, shopper: $shopper, market: $market, products: $products, userId: $userId, driverId: $driverId, shopperId: $shopperId, warehouseId: $warehouseId, marketId: $marketId, shippingId: $shippingId, createdAt: $createdAt, packagedAt: $packagedAt, pickedAt: $pickedAt, deliveryAddress: $deliveryAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.delivered, delivered) ||
                other.delivered == delivered) &&
            (identical(other.delayed, delayed) || other.delayed == delayed) &&
            (identical(other.packaged, packaged) ||
                other.packaged == packaged) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled) &&
            (identical(other.assigned, assigned) ||
                other.assigned == assigned) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.picked, picked) || other.picked == picked) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
            (identical(other.shopper, shopper) || other.shopper == shopper) &&
            (identical(other.market, market) || other.market == market) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.shopperId, shopperId) ||
                other.shopperId == shopperId) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.packagedAt, packagedAt) ||
                other.packagedAt == packagedAt) &&
            (identical(other.pickedAt, pickedAt) ||
                other.pickedAt == pickedAt) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        paid,
        delivered,
        delayed,
        packaged,
        cancelled,
        assigned,
        verified,
        picked,
        uuid,
        code,
        amount,
        status,
        lng,
        lat,
        link,
        location,
        address,
        discount,
        notes,
        user,
        warehouse,
        shopper,
        market,
        const DeepCollectionEquality().hash(_products),
        userId,
        driverId,
        shopperId,
        warehouseId,
        marketId,
        shippingId,
        createdAt,
        packagedAt,
        pickedAt,
        deliveryAddress
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      __$$_OrderEntityCopyWithImpl<_$_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  factory _OrderEntity(
      {final int? id,
      final int? paid,
      final int? delivered,
      final int? delayed,
      final int? packaged,
      final int? cancelled,
      final int? assigned,
      final int? verified,
      final int? picked,
      final String? uuid,
      final String? code,
      final String? amount,
      final String? status,
      final String? lng,
      final String? lat,
      final String? link,
      final String? location,
      final String? address,
      final String? discount,
      final String? notes,
      final UserEntity? user,
      final WarehouseEntity? warehouse,
      final ShopperEntity? shopper,
      final MarketEntity? market,
      final List<ProductEntity>? products,
      @JsonKey(name: 'user_id')
          final int? userId,
      @JsonKey(name: 'driver_id')
          final int? driverId,
      @JsonKey(name: 'shopper_id')
          final int? shopperId,
      @JsonKey(name: 'warehouse_id')
          final int? warehouseId,
      @JsonKey(name: 'market_id')
          final int? marketId,
      @JsonKey(name: 'shipping_id')
          final int? shippingId,
      @JsonKey(name: 'created_at')
          final String? createdAt,
      @JsonKey(name: 'packaged_at')
          final String? packagedAt,
      @JsonKey(name: 'picked_at')
          final String? pickedAt,
      @JsonKey(name: 'delivery_address')
          final DeliveryAddressEntity? deliveryAddress}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  int? get id;
  @override
  int? get paid;
  @override
  int? get delivered;
  @override
  int? get delayed;
  @override
  int? get packaged;
  @override
  int? get cancelled;
  @override
  int? get assigned;
  @override
  int? get verified;
  @override
  int? get picked;
  @override
  String? get uuid;
  @override
  String? get code;
  @override
  String? get amount;
  @override
  String? get status;
  @override
  String? get lng;
  @override
  String? get lat;
  @override
  String? get link;
  @override
  String? get location;
  @override
  String? get address;
  @override
  String? get discount;
  @override
  String? get notes;
  @override
  UserEntity? get user;
  @override
  WarehouseEntity? get warehouse;
  @override
  ShopperEntity? get shopper;
  @override
  MarketEntity? get market;
  @override
  List<ProductEntity>? get products;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId;
  @override
  @JsonKey(name: 'shopper_id')
  int? get shopperId;
  @override
  @JsonKey(name: 'warehouse_id')
  int? get warehouseId;
  @override
  @JsonKey(name: 'market_id')
  int? get marketId;
  @override
  @JsonKey(name: 'shipping_id')
  int? get shippingId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'packaged_at')
  String? get packagedAt;
  @override
  @JsonKey(name: 'picked_at')
  String? get pickedAt;
  @override
  @JsonKey(name: 'delivery_address')
  DeliveryAddressEntity? get deliveryAddress;
  @override
  @JsonKey(ignore: true)
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
