import 'package:dujis_partner/core/models/models.dart';

abstract class BaseOrderRepository {
  Future<AppResponse<List<OrderEntity>>> getOrders();
  Future<AppResponse<List<OrderEntity>>> getPastOrders();
  Future<AppResponse<List<SupplierEntity>>> getSuppliers(
      SupplierRequest supplierRequest);
  Future<AppResponse> assignProduct(AssignedRequest assignedRequest);
  Future<AppResponse> packedOrder(PackagedRequest packagedRequest);
}
