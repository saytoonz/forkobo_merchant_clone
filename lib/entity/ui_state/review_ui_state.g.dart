// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewUiStateImpl _$$ReviewUiStateImplFromJson(Map<String, dynamic> json) =>
    _$ReviewUiStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      reviews:
          (json['reviews'] as List<dynamic>?)
              ?.map((e) => ReviewEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errorMsg: json['errorMsg'] as String? ?? '',
      nextUrl: json['nextUrl'] as String?,
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
      hasMoreData: json['hasMoreData'] as bool? ?? false,
      ratingStats: json['ratingStats'] == null
          ? null
          : ProductRatingStats.fromJson(
              json['ratingStats'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$ReviewUiStateImplToJson(_$ReviewUiStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'reviews': instance.reviews,
      'errorMsg': instance.errorMsg,
      'nextUrl': instance.nextUrl,
      'currentPage': instance.currentPage,
      'hasMoreData': instance.hasMoreData,
      'ratingStats': instance.ratingStats,
    };

_$UserReviewUiStateImpl _$$UserReviewUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$UserReviewUiStateImpl(
  isLoading: json['isLoading'] as bool? ?? false,
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  errorMsg: json['errorMsg'] as String? ?? '',
  nextUrl: json['nextUrl'] as String?,
  currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
  hasMoreData: json['hasMoreData'] as bool? ?? false,
);

Map<String, dynamic> _$$UserReviewUiStateImplToJson(
  _$UserReviewUiStateImpl instance,
) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'reviews': instance.reviews,
  'errorMsg': instance.errorMsg,
  'nextUrl': instance.nextUrl,
  'currentPage': instance.currentPage,
  'hasMoreData': instance.hasMoreData,
};

_$CreateReviewUiStateImpl _$$CreateReviewUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$CreateReviewUiStateImpl(
  isLoading: json['isLoading'] as bool? ?? false,
  errorMsg: json['errorMsg'] as String? ?? '',
  isSuccess: json['isSuccess'] as bool? ?? false,
);

Map<String, dynamic> _$$CreateReviewUiStateImplToJson(
  _$CreateReviewUiStateImpl instance,
) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'errorMsg': instance.errorMsg,
  'isSuccess': instance.isSuccess,
};
