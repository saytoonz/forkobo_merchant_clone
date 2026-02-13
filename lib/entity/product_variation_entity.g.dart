// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariationEntityImpl _$$ProductVariationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$ProductVariationEntityImpl(
  name: json['name'] as String?,
  type: json['type'] as String?,
  value: json['value'] as String?,
  imageUrl: json['image_url'] as String?,
  isAvailable: json['is_available'] as bool? ?? true,
  stockQuantity: (json['stock_quantity'] as num?)?.toInt() ?? 0,
  priceAdjustment: json['price_adjustment'] as num? ?? 0,
);

Map<String, dynamic> _$$ProductVariationEntityImplToJson(
  _$ProductVariationEntityImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'value': instance.value,
  'image_url': instance.imageUrl,
  'is_available': instance.isAvailable,
  'stock_quantity': instance.stockQuantity,
  'price_adjustment': instance.priceAdjustment,
};
