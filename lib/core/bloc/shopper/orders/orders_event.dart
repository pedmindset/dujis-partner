part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders() = ShopperGetNewOrders;
  const factory OrdersEvent.getPastOrders() = ShopperGetPastOrders;
  const factory OrdersEvent.currentOrderReset() = NewReset;
  const factory OrdersEvent.pastOrderReset() = PastReset;
}
