// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderUiStateImpl _$$OrderUiStateImplFromJson(Map<String, dynamic> json) =>
    _$OrderUiStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      orders:
          (json['orders'] as List<dynamic>?)
              ?.map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errorMsg: json['errorMsg'] as String? ?? '',
      nextUrl: json['nextUrl'] as String?,
    );

Map<String, dynamic> _$$OrderUiStateImplToJson(_$OrderUiStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'orders': instance.orders,
      'errorMsg': instance.errorMsg,
      'nextUrl': instance.nextUrl,
    };
