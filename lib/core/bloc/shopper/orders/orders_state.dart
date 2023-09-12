part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const OrdersState._();

  const factory OrdersState({
    required ShopperDataStatus status,
    required List<OrderEntity> orders,
    String? message,
  }) = _OrdersState;

  factory OrdersState.initial() {
    return const OrdersState(
      orders: [],
      status: ShopperDataStatus.orderInitial,
      message: null,
    );
  }
}
