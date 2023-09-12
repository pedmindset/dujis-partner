import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dujis_partner/core/models/response/app_response/app_response.dart';
import 'package:dujis_partner/core/models/entities/suplier_dashboard/supplier_dashboard_entity.dart';
import 'package:dujis_partner/core/models/entities/order/order_entity.dart';
import 'package:dujis_partner/core/repository/core/endpoints.dart';
import 'package:dujis_partner/core/utils/utils.dart';

import 'base_repo.dart';

class SupplierRepo extends BaseSupplierRepository {
  final Dio _dioClient;

  SupplierRepo({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().instance;

  @override
  Future<AppResponse<SupplierDashboardEntity?>> dashboard() async {
    final response = await _dioClient.get(supplierDashboard);

    return AppResponse<SupplierDashboardEntity?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? SupplierDashboardEntity.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<List<OrderEntity>>> getLatestOrders() async {
    final response = await _dioClient.get(supplierLatest);

    return AppResponse<List<OrderEntity>>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>).map((e) => OrderEntity.fromJson(e)).toList()
          : [],
    );
  }

  @override
  Future<AppResponse<List<OrderEntity>>> getOrders() async {
    final response = await _dioClient.get(supplierPast);

    return AppResponse<List<OrderEntity>>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>).map((e) => OrderEntity.fromJson(e)).toList()
          : [],
    );
  }

  @override
  Future<AppResponse<List<OrderEntity>>> getPastOrders() async {
    final response = await _dioClient.get(supplierPast);

    return AppResponse<List<OrderEntity>>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>).map((e) => OrderEntity.fromJson(e)).toList()
          : [],
    );
  }
}
