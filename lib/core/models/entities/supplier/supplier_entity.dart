import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_entity.freezed.dart';
part 'supplier_entity.g.dart';

@freezed
class SupplierEntity with _$SupplierEntity {
  factory SupplierEntity({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'market_id') int? marketId,
    String? type,
    String? longitude,
    String? latitude,
    String? address,
    String? city,
    String? name,
    String? description,
  }) = _SupplierEntity;

  factory SupplierEntity.fromJson(Map<String, dynamic> json) =>
      _$SupplierEntityFromJson(json);
}
