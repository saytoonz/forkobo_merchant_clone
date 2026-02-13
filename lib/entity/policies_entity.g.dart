// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policies_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PoliciesEntityImpl _$$PoliciesEntityImplFromJson(Map<String, dynamic> json) =>
    _$PoliciesEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      version: json['version'] as String?,
      effectiveDate: json['effective_date'] as String?,
    );

Map<String, dynamic> _$$PoliciesEntityImplToJson(
  _$PoliciesEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'version': instance.version,
  'effective_date': instance.effectiveDate,
};
