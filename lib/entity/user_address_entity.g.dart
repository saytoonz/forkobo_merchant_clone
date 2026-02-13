// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressEntityImpl _$$UserAddressEntityImplFromJson(
  Map<String, dynamic> json,
) => _$UserAddressEntityImpl(
  id: json['id'] as String?,
  label: json['label'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  phone: json['phone'] as String?,
  streetAddress: json['street_address'] as String?,
  apartment: json['apartment'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  postalCode: json['postal_code'] as String?,
  country: json['country'] as String?,
  isDefault: json['is_default'] as bool? ?? false,
  type:
      $enumDecodeNullable(_$AddressTypeEnumMap, json['type']) ??
      AddressType.both,
  deliveryInstructions: json['delivery_instructions'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$$UserAddressEntityImplToJson(
  _$UserAddressEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'street_address': instance.streetAddress,
  'apartment': instance.apartment,
  'city': instance.city,
  'state': instance.state,
  'postal_code': instance.postalCode,
  'country': instance.country,
  'is_default': instance.isDefault,
  'type': _$AddressTypeEnumMap[instance.type]!,
  'delivery_instructions': instance.deliveryInstructions,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

const _$AddressTypeEnumMap = {
  AddressType.shipping: 'shipping',
  AddressType.billing: 'billing',
  AddressType.both: 'both',
};

_$UserAddressListResponseImpl _$$UserAddressListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserAddressListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => UserAddressEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String,
);

Map<String, dynamic> _$$UserAddressListResponseImplToJson(
  _$UserAddressListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_$UserAddressResponseImpl _$$UserAddressResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserAddressResponseImpl(
  success: json['success'] as bool,
  data: UserAddressEntity.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
);

Map<String, dynamic> _$$UserAddressResponseImplToJson(
  _$UserAddressResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};
