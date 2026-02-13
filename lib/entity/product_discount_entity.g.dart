// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_discount_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDiscountEntityImpl _$$ProductDiscountEntityImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDiscountEntityImpl(
  hasDiscount: json['has_discount'] as bool? ?? false,
  discountType: json['discount_type'] as String?,
  discountValue: json['discount_value'] as num? ?? 0,
  discountPercentage: json['discount_percentage'] as num? ?? 0,
  discountedPrice: json['discounted_price'] as num? ?? 0,
  discountSavings: json['discount_savings'] as num? ?? 0,
  isActive: json['is_active'] as bool? ?? false,
  isAvailable: json['is_available'] as bool? ?? false,
  startsAt: json['starts_at'] as String?,
  endsAt: json['ends_at'] as String?,
  isFlashSale: json['is_flash_sale'] as bool? ?? false,
  maxQuantity: (json['max_quantity'] as num?)?.toInt() ?? 0,
  usedQuantity: (json['used_quantity'] as num?)?.toInt() ?? 0,
  remainingQuantity: (json['remaining_quantity'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$ProductDiscountEntityImplToJson(
  _$ProductDiscountEntityImpl instance,
) => <String, dynamic>{
  'has_discount': instance.hasDiscount,
  'discount_type': instance.discountType,
  'discount_value': instance.discountValue,
  'discount_percentage': instance.discountPercentage,
  'discounted_price': instance.discountedPrice,
  'discount_savings': instance.discountSavings,
  'is_active': instance.isActive,
  'is_available': instance.isAvailable,
  'starts_at': instance.startsAt,
  'ends_at': instance.endsAt,
  'is_flash_sale': instance.isFlashSale,
  'max_quantity': instance.maxQuantity,
  'used_quantity': instance.usedQuantity,
  'remaining_quantity': instance.remainingQuantity,
};
