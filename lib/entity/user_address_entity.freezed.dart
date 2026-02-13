// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserAddressEntity _$UserAddressEntityFromJson(Map<String, dynamic> json) {
  return _UserAddressEntity.fromJson(json);
}

/// @nodoc
mixin _$UserAddressEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_address')
  String? get streetAddress => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  AddressType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_instructions')
  String? get deliveryInstructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserAddressEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressEntityCopyWith<UserAddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressEntityCopyWith<$Res> {
  factory $UserAddressEntityCopyWith(
    UserAddressEntity value,
    $Res Function(UserAddressEntity) then,
  ) = _$UserAddressEntityCopyWithImpl<$Res, UserAddressEntity>;
  @useResult
  $Res call({
    String? id,
    String? label,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? phone,
    @JsonKey(name: 'street_address') String? streetAddress,
    String? apartment,
    String? city,
    String? state,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? country,
    @JsonKey(name: 'is_default') bool isDefault,
    AddressType type,
    @JsonKey(name: 'delivery_instructions') String? deliveryInstructions,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class _$UserAddressEntityCopyWithImpl<$Res, $Val extends UserAddressEntity>
    implements $UserAddressEntityCopyWith<$Res> {
  _$UserAddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? streetAddress = freezed,
    Object? apartment = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? isDefault = null,
    Object? type = null,
    Object? deliveryInstructions = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            streetAddress: freezed == streetAddress
                ? _value.streetAddress
                : streetAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            apartment: freezed == apartment
                ? _value.apartment
                : apartment // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String?,
            postalCode: freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            country: freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String?,
            isDefault: null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                      as bool,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as AddressType,
            deliveryInstructions: freezed == deliveryInstructions
                ? _value.deliveryInstructions
                : deliveryInstructions // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserAddressEntityImplCopyWith<$Res>
    implements $UserAddressEntityCopyWith<$Res> {
  factory _$$UserAddressEntityImplCopyWith(
    _$UserAddressEntityImpl value,
    $Res Function(_$UserAddressEntityImpl) then,
  ) = __$$UserAddressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? label,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? phone,
    @JsonKey(name: 'street_address') String? streetAddress,
    String? apartment,
    String? city,
    String? state,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? country,
    @JsonKey(name: 'is_default') bool isDefault,
    AddressType type,
    @JsonKey(name: 'delivery_instructions') String? deliveryInstructions,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class __$$UserAddressEntityImplCopyWithImpl<$Res>
    extends _$UserAddressEntityCopyWithImpl<$Res, _$UserAddressEntityImpl>
    implements _$$UserAddressEntityImplCopyWith<$Res> {
  __$$UserAddressEntityImplCopyWithImpl(
    _$UserAddressEntityImpl _value,
    $Res Function(_$UserAddressEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? streetAddress = freezed,
    Object? apartment = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? isDefault = null,
    Object? type = null,
    Object? deliveryInstructions = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserAddressEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        streetAddress: freezed == streetAddress
            ? _value.streetAddress
            : streetAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        apartment: freezed == apartment
            ? _value.apartment
            : apartment // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        postalCode: freezed == postalCode
            ? _value.postalCode
            : postalCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        country: freezed == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String?,
        isDefault: null == isDefault
            ? _value.isDefault
            : isDefault // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as AddressType,
        deliveryInstructions: freezed == deliveryInstructions
            ? _value.deliveryInstructions
            : deliveryInstructions // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressEntityImpl extends _UserAddressEntity {
  const _$UserAddressEntityImpl({
    this.id,
    this.label,
    @JsonKey(name: 'first_name') this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    this.phone,
    @JsonKey(name: 'street_address') this.streetAddress,
    this.apartment,
    this.city,
    this.state,
    @JsonKey(name: 'postal_code') this.postalCode,
    this.country,
    @JsonKey(name: 'is_default') this.isDefault = false,
    this.type = AddressType.both,
    @JsonKey(name: 'delivery_instructions') this.deliveryInstructions,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : super._();

  factory _$UserAddressEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? label;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'street_address')
  final String? streetAddress;
  @override
  final String? apartment;
  @override
  final String? city;
  @override
  final String? state;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @override
  final String? country;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey()
  final AddressType type;
  @override
  @JsonKey(name: 'delivery_instructions')
  final String? deliveryInstructions;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'UserAddressEntity(id: $id, label: $label, firstName: $firstName, lastName: $lastName, phone: $phone, streetAddress: $streetAddress, apartment: $apartment, city: $city, state: $state, postalCode: $postalCode, country: $country, isDefault: $isDefault, type: $type, deliveryInstructions: $deliveryInstructions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.deliveryInstructions, deliveryInstructions) ||
                other.deliveryInstructions == deliveryInstructions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    label,
    firstName,
    lastName,
    phone,
    streetAddress,
    apartment,
    city,
    state,
    postalCode,
    country,
    isDefault,
    type,
    deliveryInstructions,
    createdAt,
    updatedAt,
  );

  /// Create a copy of UserAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressEntityImplCopyWith<_$UserAddressEntityImpl> get copyWith =>
      __$$UserAddressEntityImplCopyWithImpl<_$UserAddressEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressEntityImplToJson(this);
  }
}

abstract class _UserAddressEntity extends UserAddressEntity {
  const factory _UserAddressEntity({
    final String? id,
    final String? label,
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    final String? phone,
    @JsonKey(name: 'street_address') final String? streetAddress,
    final String? apartment,
    final String? city,
    final String? state,
    @JsonKey(name: 'postal_code') final String? postalCode,
    final String? country,
    @JsonKey(name: 'is_default') final bool isDefault,
    final AddressType type,
    @JsonKey(name: 'delivery_instructions') final String? deliveryInstructions,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
  }) = _$UserAddressEntityImpl;
  const _UserAddressEntity._() : super._();

  factory _UserAddressEntity.fromJson(Map<String, dynamic> json) =
      _$UserAddressEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get label;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'street_address')
  String? get streetAddress;
  @override
  String? get apartment;
  @override
  String? get city;
  @override
  String? get state;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  String? get country;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  AddressType get type;
  @override
  @JsonKey(name: 'delivery_instructions')
  String? get deliveryInstructions;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of UserAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressEntityImplCopyWith<_$UserAddressEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddressListResponse _$UserAddressListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _UserAddressListResponse.fromJson(json);
}

/// @nodoc
mixin _$UserAddressListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<UserAddressEntity> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this UserAddressListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressListResponseCopyWith<UserAddressListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressListResponseCopyWith<$Res> {
  factory $UserAddressListResponseCopyWith(
    UserAddressListResponse value,
    $Res Function(UserAddressListResponse) then,
  ) = _$UserAddressListResponseCopyWithImpl<$Res, UserAddressListResponse>;
  @useResult
  $Res call({bool success, List<UserAddressEntity> data, String message});
}

/// @nodoc
class _$UserAddressListResponseCopyWithImpl<
  $Res,
  $Val extends UserAddressListResponse
>
    implements $UserAddressListResponseCopyWith<$Res> {
  _$UserAddressListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<UserAddressEntity>,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserAddressListResponseImplCopyWith<$Res>
    implements $UserAddressListResponseCopyWith<$Res> {
  factory _$$UserAddressListResponseImplCopyWith(
    _$UserAddressListResponseImpl value,
    $Res Function(_$UserAddressListResponseImpl) then,
  ) = __$$UserAddressListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<UserAddressEntity> data, String message});
}

/// @nodoc
class __$$UserAddressListResponseImplCopyWithImpl<$Res>
    extends
        _$UserAddressListResponseCopyWithImpl<
          $Res,
          _$UserAddressListResponseImpl
        >
    implements _$$UserAddressListResponseImplCopyWith<$Res> {
  __$$UserAddressListResponseImplCopyWithImpl(
    _$UserAddressListResponseImpl _value,
    $Res Function(_$UserAddressListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAddressListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(
      _$UserAddressListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<UserAddressEntity>,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressListResponseImpl implements _UserAddressListResponse {
  const _$UserAddressListResponseImpl({
    required this.success,
    required final List<UserAddressEntity> data,
    required this.message,
  }) : _data = data;

  factory _$UserAddressListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressListResponseImplFromJson(json);

  @override
  final bool success;
  final List<UserAddressEntity> _data;
  @override
  List<UserAddressEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'UserAddressListResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
    message,
  );

  /// Create a copy of UserAddressListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressListResponseImplCopyWith<_$UserAddressListResponseImpl>
  get copyWith =>
      __$$UserAddressListResponseImplCopyWithImpl<
        _$UserAddressListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressListResponseImplToJson(this);
  }
}

abstract class _UserAddressListResponse implements UserAddressListResponse {
  const factory _UserAddressListResponse({
    required final bool success,
    required final List<UserAddressEntity> data,
    required final String message,
  }) = _$UserAddressListResponseImpl;

  factory _UserAddressListResponse.fromJson(Map<String, dynamic> json) =
      _$UserAddressListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<UserAddressEntity> get data;
  @override
  String get message;

  /// Create a copy of UserAddressListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressListResponseImplCopyWith<_$UserAddressListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserAddressResponse _$UserAddressResponseFromJson(Map<String, dynamic> json) {
  return _UserAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$UserAddressResponse {
  bool get success => throw _privateConstructorUsedError;
  UserAddressEntity get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this UserAddressResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressResponseCopyWith<UserAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressResponseCopyWith<$Res> {
  factory $UserAddressResponseCopyWith(
    UserAddressResponse value,
    $Res Function(UserAddressResponse) then,
  ) = _$UserAddressResponseCopyWithImpl<$Res, UserAddressResponse>;
  @useResult
  $Res call({bool success, UserAddressEntity data, String message});

  $UserAddressEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$UserAddressResponseCopyWithImpl<$Res, $Val extends UserAddressResponse>
    implements $UserAddressResponseCopyWith<$Res> {
  _$UserAddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as UserAddressEntity,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of UserAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAddressEntityCopyWith<$Res> get data {
    return $UserAddressEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAddressResponseImplCopyWith<$Res>
    implements $UserAddressResponseCopyWith<$Res> {
  factory _$$UserAddressResponseImplCopyWith(
    _$UserAddressResponseImpl value,
    $Res Function(_$UserAddressResponseImpl) then,
  ) = __$$UserAddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, UserAddressEntity data, String message});

  @override
  $UserAddressEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserAddressResponseImplCopyWithImpl<$Res>
    extends _$UserAddressResponseCopyWithImpl<$Res, _$UserAddressResponseImpl>
    implements _$$UserAddressResponseImplCopyWith<$Res> {
  __$$UserAddressResponseImplCopyWithImpl(
    _$UserAddressResponseImpl _value,
    $Res Function(_$UserAddressResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(
      _$UserAddressResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as UserAddressEntity,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressResponseImpl implements _UserAddressResponse {
  const _$UserAddressResponseImpl({
    required this.success,
    required this.data,
    required this.message,
  });

  factory _$UserAddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final UserAddressEntity data;
  @override
  final String message;

  @override
  String toString() {
    return 'UserAddressResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  /// Create a copy of UserAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressResponseImplCopyWith<_$UserAddressResponseImpl> get copyWith =>
      __$$UserAddressResponseImplCopyWithImpl<_$UserAddressResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressResponseImplToJson(this);
  }
}

abstract class _UserAddressResponse implements UserAddressResponse {
  const factory _UserAddressResponse({
    required final bool success,
    required final UserAddressEntity data,
    required final String message,
  }) = _$UserAddressResponseImpl;

  factory _UserAddressResponse.fromJson(Map<String, dynamic> json) =
      _$UserAddressResponseImpl.fromJson;

  @override
  bool get success;
  @override
  UserAddressEntity get data;
  @override
  String get message;

  /// Create a copy of UserAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressResponseImplCopyWith<_$UserAddressResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
