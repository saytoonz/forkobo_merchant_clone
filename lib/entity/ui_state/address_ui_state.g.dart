// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressUiStateImpl _$$AddressUiStateImplFromJson(
  Map<String, dynamic> json,
) => _$AddressUiStateImpl(
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => UserAddressEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isLoading: json['isLoading'] as bool? ?? false,
  isCreating: json['isCreating'] as bool? ?? false,
  isUpdating: json['isUpdating'] as bool? ?? false,
  isDeleting: json['isDeleting'] as bool? ?? false,
  isLoadingShippingMethods: json['isLoadingShippingMethods'] as bool? ?? false,
  shippingMethods:
      (json['shippingMethods'] as List<dynamic>?)
          ?.map((e) => ShippingMethodEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  error: json['error'] as String?,
  shippingMethodsError: json['shippingMethodsError'] as String?,
  selectedAddress: json['selectedAddress'] == null
      ? null
      : UserAddressEntity.fromJson(
          json['selectedAddress'] as Map<String, dynamic>,
        ),
  selectedShippingMethod: json['selectedShippingMethod'] == null
      ? null
      : ShippingMethodEntity.fromJson(
          json['selectedShippingMethod'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$AddressUiStateImplToJson(
  _$AddressUiStateImpl instance,
) => <String, dynamic>{
  'addresses': instance.addresses,
  'isLoading': instance.isLoading,
  'isCreating': instance.isCreating,
  'isUpdating': instance.isUpdating,
  'isDeleting': instance.isDeleting,
  'isLoadingShippingMethods': instance.isLoadingShippingMethods,
  'shippingMethods': instance.shippingMethods,
  'error': instance.error,
  'shippingMethodsError': instance.shippingMethodsError,
  'selectedAddress': instance.selectedAddress,
  'selectedShippingMethod': instance.selectedShippingMethod,
};
