part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.orders() = ShopperGetOrders;
  const factory OrdersEvent.reset() = ShpperOrderReset;
}
