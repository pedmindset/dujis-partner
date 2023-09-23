part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const OrdersState._();

  const factory OrdersState({
    required ShNewOrdersStatus newOrdersStatus,
    required ShPastOrdersStatus pastOrdersStatus,
    required List<OrderEntity> newOrders,
    required List<OrderEntity> pastOrders,
    String? message,
  }) = _OrdersState;

  factory OrdersState.initial() {
    return const OrdersState(
      newOrdersStatus: ShNewOrdersStatus.initial,
      pastOrdersStatus: ShPastOrdersStatus.initial,
      newOrders: [],
      pastOrders: [],
      message: null,
    );
  }
}
