// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopEntityImpl _$$ShopEntityImplFromJson(Map<String, dynamic> json) =>
    _$ShopEntityImpl(
      id: json['id'] as String,
      recentId: json['recentId'] as String?,
      name: json['name'] as String?,
      logoUrl: json['logoUrl'] as String?,
      coverImageUrl: json['coverImageUrl'] as String?,
      textLogo: json['textLogo'] as String?,
      videoUrl: json['videoUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      description: json['description'] as String? ?? '',
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cardType:
          $enumDecodeNullable(_$ShopCardTypeEnumMap, json['cardType']) ??
          ShopCardType.productRow,
      overlayColor: json['overlayColor'] as String? ?? 'a28c60',
      isFollowing: json['is_following'] as bool? ?? false,
      products:
          (json['products'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activePolicies: json['active_policies'] == null
          ? null
          : ShopPolicies.fromJson(
              json['active_policies'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$ShopEntityImplToJson(_$ShopEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recentId': instance.recentId,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'coverImageUrl': instance.coverImageUrl,
      'textLogo': instance.textLogo,
      'videoUrl': instance.videoUrl,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'description': instance.description,
      'categories': instance.categories,
      'cardType': _$ShopCardTypeEnumMap[instance.cardType]!,
      'overlayColor': instance.overlayColor,
      'is_following': instance.isFollowing,
      'products': instance.products,
      'active_policies': instance.activePolicies,
    };

const _$ShopCardTypeEnumMap = {
  ShopCardType.productGrid: 'productGrid',
  ShopCardType.videoOverlay: 'videoOverlay',
  ShopCardType.productRow: 'productRow',
};

_$ShopPoliciesImpl _$$ShopPoliciesImplFromJson(
  Map<String, dynamic> json,
) => _$ShopPoliciesImpl(
  terms: json['terms_and_conditions'] == null
      ? null
      : PoliciesEntity.fromJson(
          json['terms_and_conditions'] as Map<String, dynamic>,
        ),
  privacy: json['privacy_policy'] == null
      ? null
      : PoliciesEntity.fromJson(json['privacy_policy'] as Map<String, dynamic>),
  refund: json['refund_policy'] == null
      ? null
      : PoliciesEntity.fromJson(json['refund_policy'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ShopPoliciesImplToJson(_$ShopPoliciesImpl instance) =>
    <String, dynamic>{
      'terms_and_conditions': instance.terms,
      'privacy_policy': instance.privacy,
      'refund_policy': instance.refund,
    };
