// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_onboarding_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MerchantOnboardingStartResponse _$MerchantOnboardingStartResponseFromJson(
  Map<String, dynamic> json,
) {
  return _MerchantOnboardingStartResponse.fromJson(json);
}

/// @nodoc
mixin _$MerchantOnboardingStartResponse {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile =>
      throw _privateConstructorUsedError;

  /// Serializes this MerchantOnboardingStartResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantOnboardingStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantOnboardingStartResponseCopyWith<MerchantOnboardingStartResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantOnboardingStartResponseCopyWith<$Res> {
  factory $MerchantOnboardingStartResponseCopyWith(
    MerchantOnboardingStartResponse value,
    $Res Function(MerchantOnboardingStartResponse) then,
  ) =
      _$MerchantOnboardingStartResponseCopyWithImpl<
        $Res,
        MerchantOnboardingStartResponse
      >;
  @useResult
  $Res call({
    String message,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class _$MerchantOnboardingStartResponseCopyWithImpl<
  $Res,
  $Val extends MerchantOnboardingStartResponse
>
    implements $MerchantOnboardingStartResponseCopyWith<$Res> {
  _$MerchantOnboardingStartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantOnboardingStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? merchantProfile = freezed}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$MerchantOnboardingStartResponseImplCopyWith<$Res>
    implements $MerchantOnboardingStartResponseCopyWith<$Res> {
  factory _$$MerchantOnboardingStartResponseImplCopyWith(
    _$MerchantOnboardingStartResponseImpl value,
    $Res Function(_$MerchantOnboardingStartResponseImpl) then,
  ) = __$$MerchantOnboardingStartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String message,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class __$$MerchantOnboardingStartResponseImplCopyWithImpl<$Res>
    extends
        _$MerchantOnboardingStartResponseCopyWithImpl<
          $Res,
          _$MerchantOnboardingStartResponseImpl
        >
    implements _$$MerchantOnboardingStartResponseImplCopyWith<$Res> {
  __$$MerchantOnboardingStartResponseImplCopyWithImpl(
    _$MerchantOnboardingStartResponseImpl _value,
    $Res Function(_$MerchantOnboardingStartResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MerchantOnboardingStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? merchantProfile = freezed}) {
    return _then(
      _$MerchantOnboardingStartResponseImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$MerchantOnboardingStartResponseImpl
    implements _MerchantOnboardingStartResponse {
  const _$MerchantOnboardingStartResponseImpl({
    required this.message,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) : _merchantProfile = merchantProfile;

  factory _$MerchantOnboardingStartResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MerchantOnboardingStartResponseImplFromJson(json);

  @override
  final String message;
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
    return 'MerchantOnboardingStartResponse(message: $message, merchantProfile: $merchantProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantOnboardingStartResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._merchantProfile,
              _merchantProfile,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_merchantProfile),
  );

  /// Create a copy of MerchantOnboardingStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantOnboardingStartResponseImplCopyWith<
    _$MerchantOnboardingStartResponseImpl
  >
  get copyWith =>
      __$$MerchantOnboardingStartResponseImplCopyWithImpl<
        _$MerchantOnboardingStartResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantOnboardingStartResponseImplToJson(this);
  }
}

abstract class _MerchantOnboardingStartResponse
    implements MerchantOnboardingStartResponse {
  const factory _MerchantOnboardingStartResponse({
    required final String message,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) = _$MerchantOnboardingStartResponseImpl;

  factory _MerchantOnboardingStartResponse.fromJson(Map<String, dynamic> json) =
      _$MerchantOnboardingStartResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile;

  /// Create a copy of MerchantOnboardingStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantOnboardingStartResponseImplCopyWith<
    _$MerchantOnboardingStartResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

MerchantAddressResponse _$MerchantAddressResponseFromJson(
  Map<String, dynamic> json,
) {
  return _MerchantAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$MerchantAddressResponse {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile =>
      throw _privateConstructorUsedError;

  /// Serializes this MerchantAddressResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantAddressResponseCopyWith<MerchantAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantAddressResponseCopyWith<$Res> {
  factory $MerchantAddressResponseCopyWith(
    MerchantAddressResponse value,
    $Res Function(MerchantAddressResponse) then,
  ) = _$MerchantAddressResponseCopyWithImpl<$Res, MerchantAddressResponse>;
  @useResult
  $Res call({
    String message,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class _$MerchantAddressResponseCopyWithImpl<
  $Res,
  $Val extends MerchantAddressResponse
>
    implements $MerchantAddressResponseCopyWith<$Res> {
  _$MerchantAddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? merchantProfile = freezed}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$MerchantAddressResponseImplCopyWith<$Res>
    implements $MerchantAddressResponseCopyWith<$Res> {
  factory _$$MerchantAddressResponseImplCopyWith(
    _$MerchantAddressResponseImpl value,
    $Res Function(_$MerchantAddressResponseImpl) then,
  ) = __$$MerchantAddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String message,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class __$$MerchantAddressResponseImplCopyWithImpl<$Res>
    extends
        _$MerchantAddressResponseCopyWithImpl<
          $Res,
          _$MerchantAddressResponseImpl
        >
    implements _$$MerchantAddressResponseImplCopyWith<$Res> {
  __$$MerchantAddressResponseImplCopyWithImpl(
    _$MerchantAddressResponseImpl _value,
    $Res Function(_$MerchantAddressResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MerchantAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? merchantProfile = freezed}) {
    return _then(
      _$MerchantAddressResponseImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$MerchantAddressResponseImpl implements _MerchantAddressResponse {
  const _$MerchantAddressResponseImpl({
    required this.message,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) : _merchantProfile = merchantProfile;

  factory _$MerchantAddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantAddressResponseImplFromJson(json);

  @override
  final String message;
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
    return 'MerchantAddressResponse(message: $message, merchantProfile: $merchantProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantAddressResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._merchantProfile,
              _merchantProfile,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_merchantProfile),
  );

  /// Create a copy of MerchantAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantAddressResponseImplCopyWith<_$MerchantAddressResponseImpl>
  get copyWith =>
      __$$MerchantAddressResponseImplCopyWithImpl<
        _$MerchantAddressResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantAddressResponseImplToJson(this);
  }
}

abstract class _MerchantAddressResponse implements MerchantAddressResponse {
  const factory _MerchantAddressResponse({
    required final String message,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) = _$MerchantAddressResponseImpl;

  factory _MerchantAddressResponse.fromJson(Map<String, dynamic> json) =
      _$MerchantAddressResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile;

  /// Create a copy of MerchantAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantAddressResponseImplCopyWith<_$MerchantAddressResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MerchantPersonalDetailsResponse _$MerchantPersonalDetailsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _MerchantPersonalDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$MerchantPersonalDetailsResponse {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile =>
      throw _privateConstructorUsedError;

  /// Serializes this MerchantPersonalDetailsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantPersonalDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantPersonalDetailsResponseCopyWith<MerchantPersonalDetailsResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantPersonalDetailsResponseCopyWith<$Res> {
  factory $MerchantPersonalDetailsResponseCopyWith(
    MerchantPersonalDetailsResponse value,
    $Res Function(MerchantPersonalDetailsResponse) then,
  ) =
      _$MerchantPersonalDetailsResponseCopyWithImpl<
        $Res,
        MerchantPersonalDetailsResponse
      >;
  @useResult
  $Res call({
    String message,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class _$MerchantPersonalDetailsResponseCopyWithImpl<
  $Res,
  $Val extends MerchantPersonalDetailsResponse
>
    implements $MerchantPersonalDetailsResponseCopyWith<$Res> {
  _$MerchantPersonalDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantPersonalDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? merchantProfile = freezed}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$MerchantPersonalDetailsResponseImplCopyWith<$Res>
    implements $MerchantPersonalDetailsResponseCopyWith<$Res> {
  factory _$$MerchantPersonalDetailsResponseImplCopyWith(
    _$MerchantPersonalDetailsResponseImpl value,
    $Res Function(_$MerchantPersonalDetailsResponseImpl) then,
  ) = __$$MerchantPersonalDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String message,
    @JsonKey(name: 'merchant_profile') Map<String, dynamic>? merchantProfile,
  });
}

/// @nodoc
class __$$MerchantPersonalDetailsResponseImplCopyWithImpl<$Res>
    extends
        _$MerchantPersonalDetailsResponseCopyWithImpl<
          $Res,
          _$MerchantPersonalDetailsResponseImpl
        >
    implements _$$MerchantPersonalDetailsResponseImplCopyWith<$Res> {
  __$$MerchantPersonalDetailsResponseImplCopyWithImpl(
    _$MerchantPersonalDetailsResponseImpl _value,
    $Res Function(_$MerchantPersonalDetailsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MerchantPersonalDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? merchantProfile = freezed}) {
    return _then(
      _$MerchantPersonalDetailsResponseImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$MerchantPersonalDetailsResponseImpl
    implements _MerchantPersonalDetailsResponse {
  const _$MerchantPersonalDetailsResponseImpl({
    required this.message,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) : _merchantProfile = merchantProfile;

  factory _$MerchantPersonalDetailsResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MerchantPersonalDetailsResponseImplFromJson(json);

  @override
  final String message;
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
    return 'MerchantPersonalDetailsResponse(message: $message, merchantProfile: $merchantProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantPersonalDetailsResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._merchantProfile,
              _merchantProfile,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_merchantProfile),
  );

  /// Create a copy of MerchantPersonalDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantPersonalDetailsResponseImplCopyWith<
    _$MerchantPersonalDetailsResponseImpl
  >
  get copyWith =>
      __$$MerchantPersonalDetailsResponseImplCopyWithImpl<
        _$MerchantPersonalDetailsResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantPersonalDetailsResponseImplToJson(this);
  }
}

abstract class _MerchantPersonalDetailsResponse
    implements MerchantPersonalDetailsResponse {
  const factory _MerchantPersonalDetailsResponse({
    required final String message,
    @JsonKey(name: 'merchant_profile')
    final Map<String, dynamic>? merchantProfile,
  }) = _$MerchantPersonalDetailsResponseImpl;

  factory _MerchantPersonalDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$MerchantPersonalDetailsResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'merchant_profile')
  Map<String, dynamic>? get merchantProfile;

  /// Create a copy of MerchantPersonalDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantPersonalDetailsResponseImplCopyWith<
    _$MerchantPersonalDetailsResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
