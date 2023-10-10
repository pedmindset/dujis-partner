import 'package:dio/dio.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/core/endpoints.dart';
import 'package:dujis_partner/core/utils/utils.dart';

import 'base_repo.dart';

class OrderRepo extends BaseOrderRepository {
  final Dio _dioClient;

  OrderRepo({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().instance;

  @override
  Future<AppResponse<List<OrderEntity>>> getOrders() async {
    final response = await _dioClient.get(shopperOrders);

    return AppResponse<List<OrderEntity>>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>).map((e) => OrderEntity.fromJson(e)).toList()
          : [],
    );
  }

  @override
  Future<AppResponse<List<OrderEntity>>> getPastOrders() async {
    final response = await _dioClient.get(shopperPastOrders);

    return AppResponse<List<OrderEntity>>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>).map((e) => OrderEntity.fromJson(e)).toList()
          : [],
    );
  }

  @override
  Future<AppResponse<List<SupplierEntity>>> getSuppliers(
      SupplierRequest supplierRequest) async {
    final response = await _dioClient.get(shopperSuppiers, queryParameters: {
      'market': supplierRequest.marketId,
      "product": supplierRequest.productId,
    });

    return AppResponse<List<SupplierEntity>>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>)
              .map((e) => SupplierEntity.fromJson(e))
              .toList()
          : [],
    );
  }

  @override
  Future<AppResponse> assignProduct(AssignedRequest assignedRequest) async {
    final response =
        await _dioClient.post(shopperAssign, data: assignedRequest);

    return AppResponse.fromJson(
      response.data,
      (dynamic json) => null,
    );
  }

  @override
  Future<AppResponse> packedOrder(PackagedRequest packagedRequest) async {
    final response =
        await _dioClient.post(shopperPackaged, data: packagedRequest);

    return AppResponse.fromJson(
      response.data,
      (dynamic json) => null,
    );
  }
}
