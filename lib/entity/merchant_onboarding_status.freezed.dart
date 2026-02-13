// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_onboarding_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MerchantOnboardingStatus _$MerchantOnboardingStatusFromJson(
  Map<String, dynamic> json,
) {
  return _MerchantOnboardingStatus.fromJson(json);
}

/// @nodoc
mixin _$MerchantOnboardingStatus {
  @JsonKey(name: 'is_merchant')
  bool get isMerchant => throw _privateConstructorUsedError;
  @JsonKey(name: 'onboarding_status')
  String get onboardingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_step')
  int get currentStep => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_steps')
  int get totalSteps => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_proceed')
  bool get canProceed => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile =>
      throw _privateConstructorUsedError;

  /// Serializes this MerchantOnboardingStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantOnboardingStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantOnboardingStatusCopyWith<MerchantOnboardingStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantOnboardingStatusCopyWith<$Res> {
  factory $MerchantOnboardingStatusCopyWith(
    MerchantOnboardingStatus value,
    $Res Function(MerchantOnboardingStatus) then,
  ) = _$MerchantOnboardingStatusCopyWithImpl<$Res, MerchantOnboardingStatus>;
  @useResult
  $Res call({
    @JsonKey(name: 'is_merchant') bool isMerchant,
    @JsonKey(name: 'onboarding_status') String onboardingStatus,
    @JsonKey(name: 'current_step') int currentStep,
    @JsonKey(name: 'total_steps') int totalSteps,
    @JsonKey(name: 'can_proceed') bool canProceed,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class _$MerchantOnboardingStatusCopyWithImpl<
  $Res,
  $Val extends MerchantOnboardingStatus
>
    implements $MerchantOnboardingStatusCopyWith<$Res> {
  _$MerchantOnboardingStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantOnboardingStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMerchant = null,
    Object? onboardingStatus = null,
    Object? currentStep = null,
    Object? totalSteps = null,
    Object? canProceed = null,
    Object? merchantProfile = freezed,
  }) {
    return _then(
      _value.copyWith(
            isMerchant: null == isMerchant
                ? _value.isMerchant
                : isMerchant // ignore: cast_nullable_to_non_nullable
                      as bool,
            onboardingStatus: null == onboardingStatus
                ? _value.onboardingStatus
                : onboardingStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            currentStep: null == currentStep
                ? _value.currentStep
                : currentStep // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSteps: null == totalSteps
                ? _value.totalSteps
                : totalSteps // ignore: cast_nullable_to_non_nullable
                      as int,
            canProceed: null == canProceed
                ? _value.canProceed
                : canProceed // ignore: cast_nullable_to_non_nullable
                      as bool,
            merchantProfile: freezed == merchantProfile
                ? _value.merchantProfile
                : merchantProfile // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MerchantOnboardingStatusImplCopyWith<$Res>
    implements $MerchantOnboardingStatusCopyWith<$Res> {
  factory _$$MerchantOnboardingStatusImplCopyWith(
    _$MerchantOnboardingStatusImpl value,
    $Res Function(_$MerchantOnboardingStatusImpl) then,
  ) = __$$MerchantOnboardingStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is_merchant') bool isMerchant,
    @JsonKey(name: 'onboarding_status') String onboardingStatus,
    @JsonKey(name: 'current_step') int currentStep,
    @JsonKey(name: 'total_steps') int totalSteps,
    @JsonKey(name: 'can_proceed') bool canProceed,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class __$$MerchantOnboardingStatusImplCopyWithImpl<$Res>
    extends
        _$MerchantOnboardingStatusCopyWithImpl<
          $Res,
          _$MerchantOnboardingStatusImpl
        >
    implements _$$MerchantOnboardingStatusImplCopyWith<$Res> {
  __$$MerchantOnboardingStatusImplCopyWithImpl(
    _$MerchantOnboardingStatusImpl _value,
    $Res Function(_$MerchantOnboardingStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MerchantOnboardingStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMerchant = null,
    Object? onboardingStatus = null,
    Object? currentStep = null,
    Object? totalSteps = null,
    Object? canProceed = null,
    Object? merchantProfile = freezed,
  }) {
    return _then(
      _$MerchantOnboardingStatusImpl(
        isMerchant: null == isMerchant
            ? _value.isMerchant
            : isMerchant // ignore: cast_nullable_to_non_nullable
                  as bool,
        onboardingStatus: null == onboardingStatus
            ? _value.onboardingStatus
            : onboardingStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        currentStep: null == currentStep
            ? _value.currentStep
            : currentStep // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSteps: null == totalSteps
            ? _value.totalSteps
            : totalSteps // ignore: cast_nullable_to_non_nullable
                  as int,
        canProceed: null == canProceed
            ? _value.canProceed
            : canProceed // ignore: cast_nullable_to_non_nullable
                  as bool,
        merchantProfile: freezed == merchantProfile
            ? _value._merchantProfile
            : merchantProfile // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantOnboardingStatusImpl implements _MerchantOnboardingStatus {
  const _$MerchantOnboardingStatusImpl({
    @JsonKey(name: 'is_merchant') required this.isMerchant,
    @JsonKey(name: 'onboarding_status') required this.onboardingStatus,
    @JsonKey(name: 'current_step') required this.currentStep,
    @JsonKey(name: 'total_steps') required this.totalSteps,
    @JsonKey(name: 'can_proceed') required this.canProceed,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) : _merchantProfile = merchantProfile;

  factory _$MerchantOnboardingStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantOnboardingStatusImplFromJson(json);

  @override
  @JsonKey(name: 'is_merchant')
  final bool isMerchant;
  @override
  @JsonKey(name: 'onboarding_status')
  final String onboardingStatus;
  @override
  @JsonKey(name: 'current_step')
  final int currentStep;
  @override
  @JsonKey(name: 'total_steps')
  final int totalSteps;
  @override
  @JsonKey(name: 'can_proceed')
  final bool canProceed;
  final Map<String, dynamic>? _merchantProfile;
  @override
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile {
    final value = _merchantProfile;
    if (value == null) return null;
    if (_merchantProfile is EqualUnmodifiableMapView) return _merchantProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MerchantOnboardingStatus(isMerchant: $isMerchant, onboardingStatus: $onboardingStatus, currentStep: $currentStep, totalSteps: $totalSteps, canProceed: $canProceed, merchantProfile: $merchantProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantOnboardingStatusImpl &&
            (identical(other.isMerchant, isMerchant) ||
                other.isMerchant == isMerchant) &&
            (identical(other.onboardingStatus, onboardingStatus) ||
                other.onboardingStatus == onboardingStatus) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.canProceed, canProceed) ||
                other.canProceed == canProceed) &&
            const DeepCollectionEquality().equals(
              other._merchantProfile,
              _merchantProfile,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isMerchant,
    onboardingStatus,
    currentStep,
    totalSteps,
    canProceed,
    const DeepCollectionEquality().hash(_merchantProfile),
  );

  /// Create a copy of MerchantOnboardingStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantOnboardingStatusImplCopyWith<_$MerchantOnboardingStatusImpl>
  get copyWith =>
      __$$MerchantOnboardingStatusImplCopyWithImpl<
        _$MerchantOnboardingStatusImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantOnboardingStatusImplToJson(this);
  }
}

abstract class _MerchantOnboardingStatus implements MerchantOnboardingStatus {
  const factory _MerchantOnboardingStatus({
    @JsonKey(name: 'is_merchant') required final bool isMerchant,
    @JsonKey(name: 'onboarding_status') required final String onboardingStatus,
    @JsonKey(name: 'current_step') required final int currentStep,
    @JsonKey(name: 'total_steps') required final int totalSteps,
    @JsonKey(name: 'can_proceed') required final bool canProceed,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) = _$MerchantOnboardingStatusImpl;

  factory _MerchantOnboardingStatus.fromJson(Map<String, dynamic> json) =
      _$MerchantOnboardingStatusImpl.fromJson;

  @override
  @JsonKey(name: 'is_merchant')
  bool get isMerchant;
  @override
  @JsonKey(name: 'onboarding_status')
  String get onboardingStatus;
  @override
  @JsonKey(name: 'current_step')
  int get currentStep;
  @override
  @JsonKey(name: 'total_steps')
  int get totalSteps;
  @override
  @JsonKey(name: 'can_proceed')
  bool get canProceed;
  @override
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile;

  /// Create a copy of MerchantOnboardingStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantOnboardingStatusImplCopyWith<_$MerchantOnboardingStatusImpl>
  get copyWith => throw _privateConstructorUsedError;
}
