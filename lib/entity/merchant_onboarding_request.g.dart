// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_onboarding_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantAddressRequestImpl _$$MerchantAddressRequestImplFromJson(
  Map<String, dynamic> json,
) => _$MerchantAddressRequestImpl(
  addressId: json['address_id'] as String?,
  createNewAddress: json['create_new_address'] as bool? ?? false,
  addressData: json['address_data'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$MerchantAddressRequestImplToJson(
  _$MerchantAddressRequestImpl instance,
) => <String, dynamic>{
  'address_id': instance.addressId,
  'create_new_address': instance.createNewAddress,
  'address_data': instance.addressData,
};

_$MerchantPersonalDetailsRequestImpl
_$$MerchantPersonalDetailsRequestImplFromJson(Map<String, dynamic> json) =>
    _$MerchantPersonalDetailsRequestImpl(
      gender: json['gender'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      nationality: json['nationality'] as String,
      countryOfResidence: json['country_of_residence'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$$MerchantPersonalDetailsRequestImplToJson(
  _$MerchantPersonalDetailsRequestImpl instance,
) => <String, dynamic>{
  'gender': instance.gender,
  'date_of_birth': instance.dateOfBirth,
  'nationality': instance.nationality,
  'country_of_residence': instance.countryOfResidence,
  'phone_number': instance.phoneNumber,
};
