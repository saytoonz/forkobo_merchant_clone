// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingMethodEntityImpl _$$ShippingMethodEntityImplFromJson(
  Map<String, dynamic> json,
) => _$ShippingMethodEntityImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  logo: json['logo'] as String?,
  price: json['price'] as String? ?? '0',
  deliveryTime: json['delivery_time'] as String?,
  isInternational: json['is_international'] as bool? ?? false,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$ShippingMethodEntityImplToJson(
  _$ShippingMethodEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'logo': instance.logo,
  'price': instance.price,
  'delivery_time': instance.deliveryTime,
  'is_international': instance.isInternational,
  'is_active': instance.isActive,
};
