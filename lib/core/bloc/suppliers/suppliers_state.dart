part of 'suppliers_bloc.dart';

@freezed
class SuppliersState with _$SuppliersState {
  const SuppliersState._();

  const factory SuppliersState({
    SupplierDashboardEntity? dashboardData,
    required List<OrderEntity> orders,
    required List<OrderEntity> latestOrders,
    required List<OrderEntity> pastOrders,
    required SupplierDataStatus dashboardStatus,
    required SupplierDataStatus ordersStatus,
    required SupplierDataStatus latestStatus,
    required SupplierDataStatus pastStatus,
    String? dashboardMessage,
    String? ordersMessage,
    String? latestOrdersMessage,
    String? pastOrdersMessage,
  }) = _SuppliersState;

  factory SuppliersState.initial() {
    return const SuppliersState(
      dashboardData: null,
      orders: [],
      pastOrders: [],
      latestOrders: [],
      dashboardStatus: SupplierDataStatus.dashboardInitial,
      ordersStatus: SupplierDataStatus.ordersInitial,
      latestStatus: SupplierDataStatus.latestOrdersInitial,
      pastStatus: SupplierDataStatus.pastOrdersInitial,
      dashboardMessage: null,
      ordersMessage: null,
      latestOrdersMessage: null,
      pastOrdersMessage: null,
    );
  }
}
