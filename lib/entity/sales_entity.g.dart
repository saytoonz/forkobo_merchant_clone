// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesEntityImpl _$$SalesEntityImplFromJson(Map<String, dynamic> json) =>
    _$SalesEntityImpl(
      userId: json['userId'] as String?,
      storeId: json['storeId'] as String?,
      totalAmount: json['totalAmount'] as num? ?? 0,
      totalOrders: (json['totalOrders'] as num?)?.toInt() ?? 0,
      grossProfit: json['grossProfit'] as num? ?? 0,
      timestamp: const TimestampConverter().fromJson(json['timestamp']),
    );

Map<String, dynamic> _$$SalesEntityImplToJson(_$SalesEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'storeId': instance.storeId,
      'totalAmount': instance.totalAmount,
      'totalOrders': instance.totalOrders,
      'grossProfit': instance.grossProfit,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
