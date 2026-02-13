// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewEntityImpl _$$ReviewEntityImplFromJson(Map<String, dynamic> json) =>
    _$ReviewEntityImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      productId: json['product_id'] as String,
      shopId: json['shop_id'] as String,
      rating: (json['rating'] as num).toInt(),
      title: json['title'] as String?,
      comment: json['comment'] as String?,
      userName: json['user_name'] as String?,
      userAvatar: json['user_avatar'] as String?,
      isVerifiedPurchase: json['is_verified_purchase'] as bool? ?? false,
      isAnonymous: json['is_anonymous'] as bool? ?? false,
      helpfulCount: (json['helpful_count'] as num?)?.toInt() ?? 0,
      isHelpfulByUser: json['is_helpful_by_user'] as bool?,
      reviewImages:
          (json['review_images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      status: json['status'] as String? ?? 'active',
    );

Map<String, dynamic> _$$ReviewEntityImplToJson(_$ReviewEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'shop_id': instance.shopId,
      'rating': instance.rating,
      'title': instance.title,
      'comment': instance.comment,
      'user_name': instance.userName,
      'user_avatar': instance.userAvatar,
      'is_verified_purchase': instance.isVerifiedPurchase,
      'is_anonymous': instance.isAnonymous,
      'helpful_count': instance.helpfulCount,
      'is_helpful_by_user': instance.isHelpfulByUser,
      'review_images': instance.reviewImages,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status': instance.status,
    };

_$ReviewListResponseImpl _$$ReviewListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewListResponseImpl(
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pagination: ReviewPagination.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
  ratingBreakdown: RatingBreakdown.fromJson(
    json['rating_breakdown'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ReviewListResponseImplToJson(
  _$ReviewListResponseImpl instance,
) => <String, dynamic>{
  'reviews': instance.reviews,
  'pagination': instance.pagination,
  'rating_breakdown': instance.ratingBreakdown,
};

_$ReviewPaginationImpl _$$ReviewPaginationImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewPaginationImpl(
  currentPage: (json['current_page'] as num?)?.toInt() ?? 1,
  totalPages: (json['total_pages'] as num?)?.toInt() ?? 1,
  totalReviews: (json['total_reviews'] as num?)?.toInt() ?? 0,
  hasNext: json['has_next'] as bool? ?? false,
);

Map<String, dynamic> _$$ReviewPaginationImplToJson(
  _$ReviewPaginationImpl instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
  'total_reviews': instance.totalReviews,
  'has_next': instance.hasNext,
};

_$RatingBreakdownImpl _$$RatingBreakdownImplFromJson(
  Map<String, dynamic> json,
) => _$RatingBreakdownImpl(
  averageRating: (json['average_rating'] as num?)?.toDouble() ?? 0.0,
  totalReviews: (json['total_reviews'] as num?)?.toInt() ?? 0,
  ratingCounts: Map<String, int>.from(json['rating_counts'] as Map),
  percentageBreakdown: (json['percentage_breakdown'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
);

Map<String, dynamic> _$$RatingBreakdownImplToJson(
  _$RatingBreakdownImpl instance,
) => <String, dynamic>{
  'average_rating': instance.averageRating,
  'total_reviews': instance.totalReviews,
  'rating_counts': instance.ratingCounts,
  'percentage_breakdown': instance.percentageBreakdown,
};

_$ProductRatingStatsImpl _$$ProductRatingStatsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductRatingStatsImpl(
  averageRating: (json['average_rating'] as num?)?.toDouble() ?? 0.0,
  totalReviews: (json['total_reviews'] as num?)?.toInt() ?? 0,
  ratingBreakdown: Map<String, int>.from(json['rating_breakdown'] as Map),
  percentageBreakdown: (json['percentage_breakdown'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
  recentReviews:
      (json['recent_reviews'] as List<dynamic>?)
          ?.map((e) => ReviewEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductRatingStatsImplToJson(
  _$ProductRatingStatsImpl instance,
) => <String, dynamic>{
  'average_rating': instance.averageRating,
  'total_reviews': instance.totalReviews,
  'rating_breakdown': instance.ratingBreakdown,
  'percentage_breakdown': instance.percentageBreakdown,
  'recent_reviews': instance.recentReviews,
};
