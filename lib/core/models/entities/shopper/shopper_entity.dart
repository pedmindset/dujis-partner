import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopper_entity.freezed.dart';
part 'shopper_entity.g.dart';

@freezed
class ShopperEntity with _$ShopperEntity {
  factory ShopperEntity({
    int? id,
    String? latitude,
    String? longitude,
    String? address,
    String? city,
    String? region,
    String? name,
    String? phone,
    String? commission,
    String? network,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'market_id') int? marketId,
    @JsonKey(name: 'momo_number') String? momoNumber,
  }) = _ShopperEntity;

  factory ShopperEntity.fromJson(Map<String, dynamic> json) =>
      _$ShopperEntityFromJson(json);
}
