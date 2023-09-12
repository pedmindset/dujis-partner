import 'package:dujis_partner/core/models/models.dart';

abstract class BaseSupplierRepository {
  Future<AppResponse<SupplierDashboardEntity?>> dashboard();
  Future<AppResponse<List<OrderEntity>>> getOrders();
  Future<AppResponse<List<OrderEntity>>> getLatestOrders();
  Future<AppResponse<List<OrderEntity>>> getPastOrders();
}
