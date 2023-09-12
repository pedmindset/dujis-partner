part of 'suppliers_bloc.dart';

@freezed
class SuppliersEvent with _$SuppliersEvent {
  const factory SuppliersEvent.dashboard() = SDashboard;
  const factory SuppliersEvent.getOrders() = SOrders;
  const factory SuppliersEvent.getLatestOrders() = SLatestOrders;
  const factory SuppliersEvent.getPastOrders() = SPastOrders;

  const factory SuppliersEvent.dashboardReset() = SDashboardReset;
  const factory SuppliersEvent.ordersReset() = SOrdersReset;
  const factory SuppliersEvent.latestOrdersReset() = SLatestOrdersReset;
  const factory SuppliersEvent.pastOrdersReset() = SPastOrdersReset;
}
