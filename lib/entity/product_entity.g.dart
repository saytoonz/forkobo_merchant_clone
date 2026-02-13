// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(
  Map<String, dynamic> json,
) => _$ProductEntityImpl(
  id: json['id'] as String,
  recentId: json['recentId'] as String?,
  name: json['name'] as String?,
  price: json['price'] as num? ?? 0,
  currentPrice: json['current_price'] as num? ?? 0,
  shopId: json['shopId'] as String?,
  rating: (json['rating'] as num?)?.toDouble() ?? 5,
  reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
  totalRatingCount: (json['totalRatingCount'] as num?)?.toInt() ?? 0,
  imageUrls:
      (json['imageUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  category: json['category'] == null
      ? null
      : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
  subcategory: json['subcategory'] == null
      ? null
      : CategoryEntity.fromJson(json['subcategory'] as Map<String, dynamic>),
  description: json['description'] as String? ?? '',
  variations:
      (json['variations'] as List<dynamic>?)
          ?.map(
            (e) => ProductVariationEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  discount: json['discount'] == null
      ? null
      : ProductDiscountEntity.fromJson(
          json['discount'] as Map<String, dynamic>,
        ),
  isSaved: json['is_saved'] as bool? ?? false,
  isFavorite: json['is_favorite'] as bool? ?? false,
  ratingBreakdown: (json['rating_breakdown'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
  recentReviews:
      (json['recent_reviews'] as List<dynamic>?)
          ?.map((e) => ReviewEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  userReview: json['user_review'] == null
      ? null
      : ReviewEntity.fromJson(json['user_review'] as Map<String, dynamic>),
  canReview: json['can_review'] as bool? ?? false,
);

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recentId': instance.recentId,
      'name': instance.name,
      'price': instance.price,
      'current_price': instance.currentPrice,
      'shopId': instance.shopId,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'totalRatingCount': instance.totalRatingCount,
      'imageUrls': instance.imageUrls,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'description': instance.description,
      'variations': instance.variations,
      'discount': instance.discount,
      'is_saved': instance.isSaved,
      'is_favorite': instance.isFavorite,
      'rating_breakdown': instance.ratingBreakdown,
      'recent_reviews': instance.recentReviews,
      'user_review': instance.userReview,
      'can_review': instance.canReview,
    };
