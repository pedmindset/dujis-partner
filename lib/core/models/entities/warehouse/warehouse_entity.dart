import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_entity.freezed.dart';
part 'warehouse_entity.g.dart';

@freezed
class WarehouseEntity with _$WarehouseEntity {
  factory WarehouseEntity({
    int? id,
    String? code,
    String? name,
    String? phone,
    String? email,
    String? city,
    String? region,
    String? lat,
    String? lng,
    String? active,
    String? main,
    String? address,
    @JsonKey(name: 'user_id') int? userId,
  }) = _WarehouseEntity;

  factory WarehouseEntity.fromJson(Map<String, dynamic> json) =>
      _$WarehouseEntityFromJson(json);
}
