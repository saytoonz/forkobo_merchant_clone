// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_onboarding_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantOnboardingStartResponseImpl
_$$MerchantOnboardingStartResponseImplFromJson(Map<String, dynamic> json) =>
    _$MerchantOnboardingStartResponseImpl(
      message: json['message'] as String,
      merchantProfile: json['merchant_profile'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MerchantOnboardingStartResponseImplToJson(
  _$MerchantOnboardingStartResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'merchant_profile': instance.merchantProfile,
};

_$MerchantAddressResponseImpl _$$MerchantAddressResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MerchantAddressResponseImpl(
  message: json['message'] as String,
  merchantProfile: json['merchant_profile'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$MerchantAddressResponseImplToJson(
  _$MerchantAddressResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'merchant_profile': instance.merchantProfile,
};

_$MerchantPersonalDetailsResponseImpl
_$$MerchantPersonalDetailsResponseImplFromJson(Map<String, dynamic> json) =>
    _$MerchantPersonalDetailsResponseImpl(
      message: json['message'] as String,
      merchantProfile: json['merchant_profile'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MerchantPersonalDetailsResponseImplToJson(
  _$MerchantPersonalDetailsResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'merchant_profile': instance.merchantProfile,
};
