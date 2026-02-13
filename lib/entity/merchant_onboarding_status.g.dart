// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_onboarding_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantOnboardingStatusImpl _$$MerchantOnboardingStatusImplFromJson(
  Map<String, dynamic> json,
) => _$MerchantOnboardingStatusImpl(
  isMerchant: json['is_merchant'] as bool,
  onboardingStatus: json['onboarding_status'] as String,
  currentStep: (json['current_step'] as num).toInt(),
  totalSteps: (json['total_steps'] as num).toInt(),
  canProceed: json['can_proceed'] as bool,
  merchantProfile: json['merchant_profile'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$MerchantOnboardingStatusImplToJson(
  _$MerchantOnboardingStatusImpl instance,
) => <String, dynamic>{
  'is_merchant': instance.isMerchant,
  'onboarding_status': instance.onboardingStatus,
  'current_step': instance.currentStep,
  'total_steps': instance.totalSteps,
  'can_proceed': instance.canProceed,
  'merchant_profile': instance.merchantProfile,
};
