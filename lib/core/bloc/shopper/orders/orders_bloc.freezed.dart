// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orders,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orders,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orders,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetOrders value) orders,
    required TResult Function(ShpperOrderReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetOrders value)? orders,
    TResult? Function(ShpperOrderReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetOrders value)? orders,
    TResult Function(ShpperOrderReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShopperGetOrdersCopyWith<$Res> {
  factory _$$ShopperGetOrdersCopyWith(
          _$ShopperGetOrders value, $Res Function(_$ShopperGetOrders) then) =
      __$$ShopperGetOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopperGetOrdersCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ShopperGetOrders>
    implements _$$ShopperGetOrdersCopyWith<$Res> {
  __$$ShopperGetOrdersCopyWithImpl(
      _$ShopperGetOrders _value, $Res Function(_$ShopperGetOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShopperGetOrders implements ShopperGetOrders {
  const _$ShopperGetOrders();

  @override
  String toString() {
    return 'OrdersEvent.orders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopperGetOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orders,
    required TResult Function() reset,
  }) {
    return orders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orders,
    TResult? Function()? reset,
  }) {
    return orders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orders,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (orders != null) {
      return orders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetOrders value) orders,
    required TResult Function(ShpperOrderReset value) reset,
  }) {
    return orders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetOrders value)? orders,
    TResult? Function(ShpperOrderReset value)? reset,
  }) {
    return orders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetOrders value)? orders,
    TResult Function(ShpperOrderReset value)? reset,
    required TResult orElse(),
  }) {
    if (orders != null) {
      return orders(this);
    }
    return orElse();
  }
}

abstract class ShopperGetOrders implements OrdersEvent {
  const factory ShopperGetOrders() = _$ShopperGetOrders;
}

/// @nodoc
abstract class _$$ShpperOrderResetCopyWith<$Res> {
  factory _$$ShpperOrderResetCopyWith(
          _$ShpperOrderReset value, $Res Function(_$ShpperOrderReset) then) =
      __$$ShpperOrderResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShpperOrderResetCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ShpperOrderReset>
    implements _$$ShpperOrderResetCopyWith<$Res> {
  __$$ShpperOrderResetCopyWithImpl(
      _$ShpperOrderReset _value, $Res Function(_$ShpperOrderReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShpperOrderReset implements ShpperOrderReset {
  const _$ShpperOrderReset();

  @override
  String toString() {
    return 'OrdersEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShpperOrderReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orders,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orders,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orders,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetOrders value) orders,
    required TResult Function(ShpperOrderReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetOrders value)? orders,
    TResult? Function(ShpperOrderReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetOrders value)? orders,
    TResult Function(ShpperOrderReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ShpperOrderReset implements OrdersEvent {
  const factory ShpperOrderReset() = _$ShpperOrderReset;
}

/// @nodoc
mixin _$OrdersState {
  ShopperDataStatus get status => throw _privateConstructorUsedError;
  List<OrderEntity> get orders => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {ShopperDataStatus status, List<OrderEntity> orders, String? message});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orders = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$_OrdersStateCopyWith(
          _$_OrdersState value, $Res Function(_$_OrdersState) then) =
      __$$_OrdersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShopperDataStatus status, List<OrderEntity> orders, String? message});
}

/// @nodoc
class __$$_OrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_OrdersState>
    implements _$$_OrdersStateCopyWith<$Res> {
  __$$_OrdersStateCopyWithImpl(
      _$_OrdersState _value, $Res Function(_$_OrdersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orders = null,
    Object? message = freezed,
  }) {
    return _then(_$_OrdersState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopperDataStatus,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OrdersState extends _OrdersState {
  const _$_OrdersState(
      {required this.status,
      required final List<OrderEntity> orders,
      this.message})
      : _orders = orders,
        super._();

  @override
  final ShopperDataStatus status;
  final List<OrderEntity> _orders;
  @override
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'OrdersState(status: $status, orders: $orders, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_orders), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      __$$_OrdersStateCopyWithImpl<_$_OrdersState>(this, _$identity);
}

abstract class _OrdersState extends OrdersState {
  const factory _OrdersState(
      {required final ShopperDataStatus status,
      required final List<OrderEntity> orders,
      final String? message}) = _$_OrdersState;
  const _OrdersState._() : super._();

  @override
  ShopperDataStatus get status;
  @override
  List<OrderEntity> get orders;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
