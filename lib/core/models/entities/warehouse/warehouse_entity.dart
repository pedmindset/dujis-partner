import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_entity.freezed.dart';
part 'warehouse_entity.g.dart';

@freezed
class WarehouseEntity with _$WarehouseEntity {
  factory WarehouseEntity({
    @JsonKey(name: 'user_id') userId,
    int? id,
    String? code,
    String? name,
    String? phone,
    String? city,
    String? lat,
    String? lng,
    String? active,
    String? main,
    String? address,
  }) = _WarehouseEntity;

  factory WarehouseEntity.fromJson(Map<String, dynamic> json) =>
      _$WarehouseEntityFromJson(json);
}
