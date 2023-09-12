import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_dashboard_entity.freezed.dart';
part 'supplier_dashboard_entity.g.dart';

@freezed
class SupplierDashboardEntity with _$SupplierDashboardEntity {
  factory SupplierDashboardEntity({
    int? confirm,
    int? cancelled,
    int? pending,
  }) = _SupplierDashboardEntity;

  factory SupplierDashboardEntity.fromJson(Map<String, dynamic> json) =>
      _$SupplierDashboardEntityFromJson(json);
}
