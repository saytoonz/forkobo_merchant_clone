// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchUiStateImpl _$$SearchUiStateImplFromJson(Map<String, dynamic> json) =>
    _$SearchUiStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      mainCategories:
          (json['mainCategories'] as List<dynamic>?)
              ?.map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      subCategories:
          (json['subCategories'] as List<dynamic>?)
              ?.map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchResults:
          (json['searchResults'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errorMsg: json['errorMsg'] as String? ?? '',
      nextUrl: json['nextUrl'] as String?,
    );

Map<String, dynamic> _$$SearchUiStateImplToJson(_$SearchUiStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'mainCategories': instance.mainCategories,
      'subCategories': instance.subCategories,
      'searchResults': instance.searchResults,
      'errorMsg': instance.errorMsg,
      'nextUrl': instance.nextUrl,
    };
