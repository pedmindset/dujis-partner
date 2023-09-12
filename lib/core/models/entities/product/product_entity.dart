import 'package:dujis_partner/core/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
    @JsonKey(name: 'product_category_id') int? productCategoryId,
    @JsonKey(name: 'wholesale_price') String? wholesalePrice,
    @JsonKey(name: 'cover_photo') String? coverPhoto,
    int? id,
    int? quantity,
    int? market,
    int? active,
    String? uuid,
    String? name,
    String? price,
    String? description,
    String? featured,
    String? thumb,
    ProductPivotEntity? pivot,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
