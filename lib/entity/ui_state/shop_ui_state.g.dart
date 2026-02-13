// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowingShopUiStateImpl _$$FollowingShopUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$FollowingShopUiStateImpl(
  isLoading: json['isLoading'] as bool? ?? false,
  shops:
      (json['shops'] as List<dynamic>?)
          ?.map((e) => ShopEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  errorMsg: json['errorMsg'] as String? ?? '',
);

Map<String, dynamic> _$$FollowingShopUiStateImplToJson(
  _$FollowingShopUiStateImpl instance,
) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'shops': instance.shops,
  'errorMsg': instance.errorMsg,
};

_$RecentlyViewedUiStateImpl _$$RecentlyViewedUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$RecentlyViewedUiStateImpl(
  isLoading: json['isLoading'] as bool? ?? false,
  productAndShops: json['productAndShops'] as List<dynamic>? ?? const [],
  errorMsg: json['errorMsg'] as String? ?? '',
);

Map<String, dynamic> _$$RecentlyViewedUiStateImplToJson(
  _$RecentlyViewedUiStateImpl instance,
) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'productAndShops': instance.productAndShops,
  'errorMsg': instance.errorMsg,
};

_$ShopUiStateImpl _$$ShopUiStateImplFromJson(Map<String, dynamic> json) =>
    _$ShopUiStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      shops:
          (json['shops'] as List<dynamic>?)
              ?.map((e) => ShopEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      followings:
          (json['followings'] as List<dynamic>?)
              ?.map((e) => ShopEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errorMsg: json['errorMsg'] as String? ?? '',
      nextUrl: json['nextUrl'] as String?,
    );

Map<String, dynamic> _$$ShopUiStateImplToJson(_$ShopUiStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'shops': instance.shops,
      'followings': instance.followings,
      'errorMsg': instance.errorMsg,
      'nextUrl': instance.nextUrl,
    };

_$SavedProductUiStateImpl _$$SavedProductUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$SavedProductUiStateImpl(
  isLoading: json['isLoading'] as bool? ?? false,
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  errorMsg: json['errorMsg'] as String? ?? '',
  nextPage: (json['nextPage'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SavedProductUiStateImplToJson(
  _$SavedProductUiStateImpl instance,
) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'products': instance.products,
  'errorMsg': instance.errorMsg,
  'nextPage': instance.nextPage,
};

_$ShopProductsUiStateImpl _$$ShopProductsUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$ShopProductsUiStateImpl(
  isLoading: json['isLoading'] as bool? ?? false,
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  errorMsg: json['errorMsg'] as String? ?? '',
  nextUrl: json['nextUrl'] as String?,
  currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
  hasMoreData: json['hasMoreData'] as bool? ?? false,
);

Map<String, dynamic> _$$ShopProductsUiStateImplToJson(
  _$ShopProductsUiStateImpl instance,
) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'products': instance.products,
  'errorMsg': instance.errorMsg,
  'nextUrl': instance.nextUrl,
  'currentPage': instance.currentPage,
  'hasMoreData': instance.hasMoreData,
};
