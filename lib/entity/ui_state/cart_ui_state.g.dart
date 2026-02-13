// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartUiStateImpl _$$CartUiStateImplFromJson(Map<String, dynamic> json) =>
    _$CartUiStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      carts:
          (json['carts'] as List<dynamic>?)
              ?.map((e) => CartEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errorMsg: json['errorMsg'] as String? ?? '',
      nextUrl: json['nextUrl'] as String?,
    );

Map<String, dynamic> _$$CartUiStateImplToJson(_$CartUiStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'carts': instance.carts,
      'errorMsg': instance.errorMsg,
      'nextUrl': instance.nextUrl,
    };
