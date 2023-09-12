import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address_entity.freezed.dart';
part 'delivery_address_entity.g.dart';

@freezed
class DeliveryAddressEntity with _$DeliveryAddressEntity {
  factory DeliveryAddressEntity({
    @JsonKey(name: 'delivery_address') int? orderId,
    int? id,
    String? name,
    String? address,
    String? phone,
    String? city,
    String? lat,
    String? long,
  }) = _DeliveryAddressEntity;

  factory DeliveryAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressEntityFromJson(json);
}
