// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryEntityImpl _$$CategoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CategoryEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      shops:
          (json['shops'] as List<dynamic>?)
              ?.map((e) => ShopEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryEntityImplToJson(
  _$CategoryEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'image': instance.image,
  'shops': instance.shops,
};
