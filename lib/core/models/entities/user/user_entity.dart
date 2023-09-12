import 'package:dujis_partner/core/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    int? id,
    String? name,
    String? email,
    String? code,
    String? phone,
    ProfileEntity? profile,
    ShopperEntity? shopper,
    SupplierEntity? supplier,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
