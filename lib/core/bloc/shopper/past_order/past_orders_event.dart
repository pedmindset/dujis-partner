part of 'past_orders_bloc.dart';

@freezed
class PastOrdersEvent with _$PastOrdersEvent {
  const factory PastOrdersEvent.orders() = ShopperPastGetOrders;
  const factory PastOrdersEvent.reset() = ShpperPastOrderReset;
}
