import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_entity.freezed.dart';
part 'market_entity.g.dart';

@freezed
class MarketEntity with _$MarketEntity {
  factory MarketEntity({
    int? id,
    String? name,
    String? latitude,
    String? longitude,
    String? address,
    String? description,
    String? city,
    String? region,
  }) = _MarketEntity;

  factory MarketEntity.fromJson(Map<String, dynamic> json) =>
      _$MarketEntityFromJson(json);
}
