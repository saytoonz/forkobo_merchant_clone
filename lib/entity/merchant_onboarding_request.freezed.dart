// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_onboarding_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MerchantAddressRequest _$MerchantAddressRequestFromJson(
  Map<String, dynamic> json,
) {
  return _MerchantAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$MerchantAddressRequest {
  @JsonKey(name: 'address_id')
  String? get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_new_address')
  bool get createNewAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_data')
  Map<String, dynamic>? get addressData => throw _privateConstructorUsedError;

  /// Serializes this MerchantAddressRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantAddressRequestCopyWith<MerchantAddressRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantAddressRequestCopyWith<$Res> {
  factory $MerchantAddressRequestCopyWith(
    MerchantAddressRequest value,
    $Res Function(MerchantAddressRequest) then,
  ) = _$MerchantAddressRequestCopyWithImpl<$Res, MerchantAddressRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'address_id') String? addressId,
    @JsonKey(name: 'create_new_address') bool createNewAddress,
    @JsonKey(name: 'address_data') Map<String, dynamic>? addressData,
  });
}

/// @nodoc
class _$MerchantAddressRequestCopyWithImpl<
  $Res,
  $Val extends MerchantAddressRequest
>
    implements $MerchantAddressRequestCopyWith<$Res> {
  _$MerchantAddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = freezed,
    Object? createNewAddress = null,
    Object? addressData = freezed,
  }) {
    return _then(
      _value.copyWith(
            addressId: freezed == addressId
                ? _value.addressId
                : addressId // ignore: cast_nullable_to_non_nullable
                      as String?,
            createNewAddress: null == createNewAddress
                ? _value.createNewAddress
                : createNewAddress // ignore: cast_nullable_to_non_nullable
                      as bool,
            addressData: freezed == addressData
                ? _value.addressData
                : addressData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MerchantAddressRequestImplCopyWith<$Res>
    implements $MerchantAddressRequestCopyWith<$Res> {
  factory _$$MerchantAddressRequestImplCopyWith(
    _$MerchantAddressRequestImpl value,
    $Res Function(_$MerchantAddressRequestImpl) then,
  ) = __$$MerchantAddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'address_id') String? addressId,
    @JsonKey(name: 'create_new_address') bool createNewAddress,
    @JsonKey(name: 'address_data') Map<String, dynamic>? addressData,
  });
}

/// @nodoc
class __$$MerchantAddressRequestImplCopyWithImpl<$Res>
    extends
        _$MerchantAddressRequestCopyWithImpl<$Res, _$MerchantAddressRequestImpl>
    implements _$$MerchantAddressRequestImplCopyWith<$Res> {
  __$$MerchantAddressRequestImplCopyWithImpl(
    _$MerchantAddressRequestImpl _value,
    $Res Function(_$MerchantAddressRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MerchantAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = freezed,
    Object? createNewAddress = null,
    Object? addressData = freezed,
  }) {
    return _then(
      _$MerchantAddressRequestImpl(
        addressId: freezed == addressId
            ? _value.addressId
            : addressId // ignore: cast_nullable_to_non_nullable
                  as String?,
        createNewAddress: null == createNewAddress
            ? _value.createNewAddress
            : createNewAddress // ignore: cast_nullable_to_non_nullable
                  as bool,
        addressData: freezed == addressData
            ? _value._addressData
            : addressData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantAddressRequestImpl implements _MerchantAddressRequest {
  const _$MerchantAddressRequestImpl({
    @JsonKey(name: 'address_id') this.addressId,
    @JsonKey(name: 'create_new_address') this.createNewAddress = false,
    @JsonKey(name: 'address_data') final Map<String, dynamic>? addressData,
  }) : _addressData = addressData;

  factory _$MerchantAddressRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantAddressRequestImplFromJson(json);

  @override
  @JsonKey(name: 'address_id')
  final String? addressId;
  @override
  @JsonKey(name: 'create_new_address')
  final bool createNewAddress;
  final Map<String, dynamic>? _addressData;
  @override
  @JsonKey(name: 'address_data')
  Map<String, dynamic>? get addressData {
    final value = _addressData;
    if (value == null) return null;
    if (_addressData is EqualUnmodifiableMapView) return _addressData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MerchantAddressRequest(addressId: $addressId, createNewAddress: $createNewAddress, addressData: $addressData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantAddressRequestImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.createNewAddress, createNewAddress) ||
                other.createNewAddress == createNewAddress) &&
            const DeepCollectionEquality().equals(
              other._addressData,
              _addressData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    addressId,
    createNewAddress,
    const DeepCollectionEquality().hash(_addressData),
  );

  /// Create a copy of MerchantAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantAddressRequestImplCopyWith<_$MerchantAddressRequestImpl>
  get copyWith =>
      __$$MerchantAddressRequestImplCopyWithImpl<_$MerchantAddressRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantAddressRequestImplToJson(this);
  }
}

abstract class _MerchantAddressRequest implements MerchantAddressRequest {
  const factory _MerchantAddressRequest({
    @JsonKey(name: 'address_id') final String? addressId,
    @JsonKey(name: 'create_new_address') final bool createNewAddress,
    @JsonKey(name: 'address_data') final Map<String, dynamic>? addressData,
  }) = _$MerchantAddressRequestImpl;

  factory _MerchantAddressRequest.fromJson(Map<String, dynamic> json) =
      _$MerchantAddressRequestImpl.fromJson;

  @override
  @JsonKey(name: 'address_id')
  String? get addressId;
  @override
  @JsonKey(name: 'create_new_address')
  bool get createNewAddress;
  @override
  @JsonKey(name: 'address_data')
  Map<String, dynamic>? get addressData;

  /// Create a copy of MerchantAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantAddressRequestImplCopyWith<_$MerchantAddressRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MerchantPersonalDetailsRequest _$MerchantPersonalDetailsRequestFromJson(
  Map<String, dynamic> json,
) {
  return _MerchantPersonalDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$MerchantPersonalDetailsRequest {
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_of_residence')
  String get countryOfResidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this MerchantPersonalDetailsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantPersonalDetailsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantPersonalDetailsRequestCopyWith<MerchantPersonalDetailsRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantPersonalDetailsRequestCopyWith<$Res> {
  factory $MerchantPersonalDetailsRequestCopyWith(
    MerchantPersonalDetailsRequest value,
    $Res Function(MerchantPersonalDetailsRequest) then,
  ) =
      _$MerchantPersonalDetailsRequestCopyWithImpl<
        $Res,
        MerchantPersonalDetailsRequest
      >;
  @useResult
  $Res call({
    String gender,
    @JsonKey(name: 'date_of_birth') String dateOfBirth,
    String nationality,
    @JsonKey(name: 'country_of_residence') String countryOfResidence,
    @JsonKey(name: 'phone_number') String phoneNumber,
  });
}

/// @nodoc
class _$MerchantPersonalDetailsRequestCopyWithImpl<
  $Res,
  $Val extends MerchantPersonalDetailsRequest
>
    implements $MerchantPersonalDetailsRequestCopyWith<$Res> {
  _$MerchantPersonalDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantPersonalDetailsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? nationality = null,
    Object? countryOfResidence = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _value.copyWith(
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
            dateOfBirth: null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String,
            nationality: null == nationality
                ? _value.nationality
                : nationality // ignore: cast_nullable_to_non_nullable
                      as String,
            countryOfResidence: null == countryOfResidence
                ? _value.countryOfResidence
                : countryOfResidence // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MerchantPersonalDetailsRequestImplCopyWith<$Res>
    implements $MerchantPersonalDetailsRequestCopyWith<$Res> {
  factory _$$MerchantPersonalDetailsRequestImplCopyWith(
    _$MerchantPersonalDetailsRequestImpl value,
    $Res Function(_$MerchantPersonalDetailsRequestImpl) then,
  ) = __$$MerchantPersonalDetailsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String gender,
    @JsonKey(name: 'date_of_birth') String dateOfBirth,
    String nationality,
    @JsonKey(name: 'country_of_residence') String countryOfResidence,
    @JsonKey(name: 'phone_number') String phoneNumber,
  });
}

/// @nodoc
class __$$MerchantPersonalDetailsRequestImplCopyWithImpl<$Res>
    extends
        _$MerchantPersonalDetailsRequestCopyWithImpl<
          $Res,
          _$MerchantPersonalDetailsRequestImpl
        >
    implements _$$MerchantPersonalDetailsRequestImplCopyWith<$Res> {
  __$$MerchantPersonalDetailsRequestImplCopyWithImpl(
    _$MerchantPersonalDetailsRequestImpl _value,
    $Res Function(_$MerchantPersonalDetailsRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MerchantPersonalDetailsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? nationality = null,
    Object? countryOfResidence = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _$MerchantPersonalDetailsRequestImpl(
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: null == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String,
        nationality: null == nationality
            ? _value.nationality
            : nationality // ignore: cast_nullable_to_non_nullable
                  as String,
        countryOfResidence: null == countryOfResidence
            ? _value.countryOfResidence
            : countryOfResidence // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantPersonalDetailsRequestImpl
    implements _MerchantPersonalDetailsRequest {
  const _$MerchantPersonalDetailsRequestImpl({
    required this.gender,
    @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
    required this.nationality,
    @JsonKey(name: 'country_of_residence') required this.countryOfResidence,
    @JsonKey(name: 'phone_number') required this.phoneNumber,
  });

  factory _$MerchantPersonalDetailsRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MerchantPersonalDetailsRequestImplFromJson(json);

  @override
  final String gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String nationality;
  @override
  @JsonKey(name: 'country_of_residence')
  final String countryOfResidence;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'MerchantPersonalDetailsRequest(gender: $gender, dateOfBirth: $dateOfBirth, nationality: $nationality, countryOfResidence: $countryOfResidence, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantPersonalDetailsRequestImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.countryOfResidence, countryOfResidence) ||
                other.countryOfResidence == countryOfResidence) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    gender,
    dateOfBirth,
    nationality,
    countryOfResidence,
    phoneNumber,
  );

  /// Create a copy of MerchantPersonalDetailsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantPersonalDetailsRequestImplCopyWith<
    _$MerchantPersonalDetailsRequestImpl
  >
  get copyWith =>
      __$$MerchantPersonalDetailsRequestImplCopyWithImpl<
        _$MerchantPersonalDetailsRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantPersonalDetailsRequestImplToJson(this);
  }
}

abstract class _MerchantPersonalDetailsRequest
    implements MerchantPersonalDetailsRequest {
  const factory _MerchantPersonalDetailsRequest({
    required final String gender,
    @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
    required final String nationality,
    @JsonKey(name: 'country_of_residence')
    required final String countryOfResidence,
    @JsonKey(name: 'phone_number') required final String phoneNumber,
  }) = _$MerchantPersonalDetailsRequestImpl;

  factory _MerchantPersonalDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$MerchantPersonalDetailsRequestImpl.fromJson;

  @override
  String get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String get nationality;
  @override
  @JsonKey(name: 'country_of_residence')
  String get countryOfResidence;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Create a copy of MerchantPersonalDetailsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantPersonalDetailsRequestImplCopyWith<
    _$MerchantPersonalDetailsRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
