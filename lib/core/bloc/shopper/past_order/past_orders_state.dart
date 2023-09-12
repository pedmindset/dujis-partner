part of 'past_orders_bloc.dart';

@freezed
class PastOrdersState with _$PastOrdersState {
  const PastOrdersState._();

  const factory PastOrdersState({
    required ShopperDataStatus status,
    required List<OrderEntity> orders,
    String? message,
  }) = _PastOrdersState;

  factory PastOrdersState.initial() {
    return const PastOrdersState(
      orders: [],
      status: ShopperDataStatus.pastOrderInitial,
      message: null,
    );
  }
}
