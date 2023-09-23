import 'package:dujis_partner/core/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
    // int? id,
    // int? market,
    // int? active,
    // String? uuid,
    // String? name,
    // String? quantity,
    // String? price,
    // String? description,
    // String? featured,
    // String? thumb,
    // ProductPivotEntity? pivot,
    // @JsonKey(name: 'product_category_id') int? productCategoryId,
    // @JsonKey(name: 'wholesale_price') String? wholesalePrice,
    // @JsonKey(name: 'cover_photo') String? coverPhoto,

    int? id,
    int? market,
    // int? active,
    // String? uuid,
    String? name,
    // String? slug,
    // String? price,
    // String? quantity,
    // String? description,
    // String? featured,
    // String? code,
    // String? barcode,
    // String? thumb,
    ProductPivotEntity? pivot,
    // @JsonKey(name: 'product_category_id') int? productCategoryId,
    // @JsonKey(name: 'brand_id') int? brandId,
    // @JsonKey(name: 'wholesale_price') String? wholesalePrice,
    // @JsonKey(name: 'cover_photo') String? coverPhoto,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
