// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentEntity _$PaymentEntityFromJson(Map<String, dynamic> json) {
  return _PaymentEntity.fromJson(json);
}

/// @nodoc
mixin _$PaymentEntity {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_reference')
  String? get paymentReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'paystack_reference')
  String? get paystackReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorization_url')
  String? get authorizationUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_code')
  String? get accessCode => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get gateway => throw _privateConstructorUsedError;
  @JsonKey(name: 'gateway_response')
  Map<String, dynamic>? get gatewayResponse =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String? get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String? get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_at')
  String? get paidAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'failed_at')
  String? get failedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'failure_reason')
  String? get failureReason => throw _privateConstructorUsedError;
  String? get fees => throw _privateConstructorUsedError;
  String? get channel => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_address')
  String? get ipAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentEntityCopyWith<PaymentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEntityCopyWith<$Res> {
  factory $PaymentEntityCopyWith(
    PaymentEntity value,
    $Res Function(PaymentEntity) then,
  ) = _$PaymentEntityCopyWithImpl<$Res, PaymentEntity>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'payment_reference') String? paymentReference,
    @JsonKey(name: 'paystack_reference') String? paystackReference,
    @JsonKey(name: 'authorization_url') String? authorizationUrl,
    @JsonKey(name: 'access_code') String? accessCode,
    String? status,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    String? amount,
    String? currency,
    String? gateway,
    @JsonKey(name: 'gateway_response') Map<String, dynamic>? gatewayResponse,
    Map<String, dynamic>? metadata,
    @JsonKey(name: 'customer_email') String? customerEmail,
    @JsonKey(name: 'customer_phone') String? customerPhone,
    @JsonKey(name: 'paid_at') String? paidAt,
    @JsonKey(name: 'failed_at') String? failedAt,
    @JsonKey(name: 'failure_reason') String? failureReason,
    String? fees,
    String? channel,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class _$PaymentEntityCopyWithImpl<$Res, $Val extends PaymentEntity>
    implements $PaymentEntityCopyWith<$Res> {
  _$PaymentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? userId = freezed,
    Object? paymentReference = freezed,
    Object? paystackReference = freezed,
    Object? authorizationUrl = freezed,
    Object? accessCode = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? gateway = freezed,
    Object? gatewayResponse = freezed,
    Object? metadata = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? paidAt = freezed,
    Object? failedAt = freezed,
    Object? failureReason = freezed,
    Object? fees = freezed,
    Object? channel = freezed,
    Object? ipAddress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderId: freezed == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentReference: freezed == paymentReference
                ? _value.paymentReference
                : paymentReference // ignore: cast_nullable_to_non_nullable
                      as String?,
            paystackReference: freezed == paystackReference
                ? _value.paystackReference
                : paystackReference // ignore: cast_nullable_to_non_nullable
                      as String?,
            authorizationUrl: freezed == authorizationUrl
                ? _value.authorizationUrl
                : authorizationUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            accessCode: freezed == accessCode
                ? _value.accessCode
                : accessCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentMethod: freezed == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String?,
            currency: freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String?,
            gateway: freezed == gateway
                ? _value.gateway
                : gateway // ignore: cast_nullable_to_non_nullable
                      as String?,
            gatewayResponse: freezed == gatewayResponse
                ? _value.gatewayResponse
                : gatewayResponse // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            customerEmail: freezed == customerEmail
                ? _value.customerEmail
                : customerEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerPhone: freezed == customerPhone
                ? _value.customerPhone
                : customerPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            paidAt: freezed == paidAt
                ? _value.paidAt
                : paidAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            failedAt: freezed == failedAt
                ? _value.failedAt
                : failedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            failureReason: freezed == failureReason
                ? _value.failureReason
                : failureReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            fees: freezed == fees
                ? _value.fees
                : fees // ignore: cast_nullable_to_non_nullable
                      as String?,
            channel: freezed == channel
                ? _value.channel
                : channel // ignore: cast_nullable_to_non_nullable
                      as String?,
            ipAddress: freezed == ipAddress
                ? _value.ipAddress
                : ipAddress // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PaymentEntityImplCopyWith<$Res>
    implements $PaymentEntityCopyWith<$Res> {
  factory _$$PaymentEntityImplCopyWith(
    _$PaymentEntityImpl value,
    $Res Function(_$PaymentEntityImpl) then,
  ) = __$$PaymentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'payment_reference') String? paymentReference,
    @JsonKey(name: 'paystack_reference') String? paystackReference,
    @JsonKey(name: 'authorization_url') String? authorizationUrl,
    @JsonKey(name: 'access_code') String? accessCode,
    String? status,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    String? amount,
    String? currency,
    String? gateway,
    @JsonKey(name: 'gateway_response') Map<String, dynamic>? gatewayResponse,
    Map<String, dynamic>? metadata,
    @JsonKey(name: 'customer_email') String? customerEmail,
    @JsonKey(name: 'customer_phone') String? customerPhone,
    @JsonKey(name: 'paid_at') String? paidAt,
    @JsonKey(name: 'failed_at') String? failedAt,
    @JsonKey(name: 'failure_reason') String? failureReason,
    String? fees,
    String? channel,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class __$$PaymentEntityImplCopyWithImpl<$Res>
    extends _$PaymentEntityCopyWithImpl<$Res, _$PaymentEntityImpl>
    implements _$$PaymentEntityImplCopyWith<$Res> {
  __$$PaymentEntityImplCopyWithImpl(
    _$PaymentEntityImpl _value,
    $Res Function(_$PaymentEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? userId = freezed,
    Object? paymentReference = freezed,
    Object? paystackReference = freezed,
    Object? authorizationUrl = freezed,
    Object? accessCode = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? gateway = freezed,
    Object? gatewayResponse = freezed,
    Object? metadata = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? paidAt = freezed,
    Object? failedAt = freezed,
    Object? failureReason = freezed,
    Object? fees = freezed,
    Object? channel = freezed,
    Object? ipAddress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$PaymentEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderId: freezed == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentReference: freezed == paymentReference
            ? _value.paymentReference
            : paymentReference // ignore: cast_nullable_to_non_nullable
                  as String?,
        paystackReference: freezed == paystackReference
            ? _value.paystackReference
            : paystackReference // ignore: cast_nullable_to_non_nullable
                  as String?,
        authorizationUrl: freezed == authorizationUrl
            ? _value.authorizationUrl
            : authorizationUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        accessCode: freezed == accessCode
            ? _value.accessCode
            : accessCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentMethod: freezed == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String?,
        currency: freezed == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String?,
        gateway: freezed == gateway
            ? _value.gateway
            : gateway // ignore: cast_nullable_to_non_nullable
                  as String?,
        gatewayResponse: freezed == gatewayResponse
            ? _value._gatewayResponse
            : gatewayResponse // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        customerEmail: freezed == customerEmail
            ? _value.customerEmail
            : customerEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerPhone: freezed == customerPhone
            ? _value.customerPhone
            : customerPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        paidAt: freezed == paidAt
            ? _value.paidAt
            : paidAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        failedAt: freezed == failedAt
            ? _value.failedAt
            : failedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        failureReason: freezed == failureReason
            ? _value.failureReason
            : failureReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        fees: freezed == fees
            ? _value.fees
            : fees // ignore: cast_nullable_to_non_nullable
                  as String?,
        channel: freezed == channel
            ? _value.channel
            : channel // ignore: cast_nullable_to_non_nullable
                  as String?,
        ipAddress: freezed == ipAddress
            ? _value.ipAddress
            : ipAddress // ignore: cast_nullable_to_non_nullable
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
class _$PaymentEntityImpl extends _PaymentEntity {
  const _$PaymentEntityImpl({
    this.id,
    @JsonKey(name: 'order_id') this.orderId,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'payment_reference') this.paymentReference,
    @JsonKey(name: 'paystack_reference') this.paystackReference,
    @JsonKey(name: 'authorization_url') this.authorizationUrl,
    @JsonKey(name: 'access_code') this.accessCode,
    this.status,
    @JsonKey(name: 'payment_method') this.paymentMethod,
    this.amount,
    this.currency,
    this.gateway,
    @JsonKey(name: 'gateway_response')
    final Map<String, dynamic>? gatewayResponse,
    final Map<String, dynamic>? metadata,
    @JsonKey(name: 'customer_email') this.customerEmail,
    @JsonKey(name: 'customer_phone') this.customerPhone,
    @JsonKey(name: 'paid_at') this.paidAt,
    @JsonKey(name: 'failed_at') this.failedAt,
    @JsonKey(name: 'failure_reason') this.failureReason,
    this.fees,
    this.channel,
    @JsonKey(name: 'ip_address') this.ipAddress,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : _gatewayResponse = gatewayResponse,
       _metadata = metadata,
       super._();

  factory _$PaymentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentEntityImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'payment_reference')
  final String? paymentReference;
  @override
  @JsonKey(name: 'paystack_reference')
  final String? paystackReference;
  @override
  @JsonKey(name: 'authorization_url')
  final String? authorizationUrl;
  @override
  @JsonKey(name: 'access_code')
  final String? accessCode;
  @override
  final String? status;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  final String? amount;
  @override
  final String? currency;
  @override
  final String? gateway;
  final Map<String, dynamic>? _gatewayResponse;
  @override
  @JsonKey(name: 'gateway_response')
  Map<String, dynamic>? get gatewayResponse {
    final value = _gatewayResponse;
    if (value == null) return null;
    if (_gatewayResponse is EqualUnmodifiableMapView) return _gatewayResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'customer_email')
  final String? customerEmail;
  @override
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;
  @override
  @JsonKey(name: 'paid_at')
  final String? paidAt;
  @override
  @JsonKey(name: 'failed_at')
  final String? failedAt;
  @override
  @JsonKey(name: 'failure_reason')
  final String? failureReason;
  @override
  final String? fees;
  @override
  final String? channel;
  @override
  @JsonKey(name: 'ip_address')
  final String? ipAddress;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'PaymentEntity(id: $id, orderId: $orderId, userId: $userId, paymentReference: $paymentReference, paystackReference: $paystackReference, authorizationUrl: $authorizationUrl, accessCode: $accessCode, status: $status, paymentMethod: $paymentMethod, amount: $amount, currency: $currency, gateway: $gateway, gatewayResponse: $gatewayResponse, metadata: $metadata, customerEmail: $customerEmail, customerPhone: $customerPhone, paidAt: $paidAt, failedAt: $failedAt, failureReason: $failureReason, fees: $fees, channel: $channel, ipAddress: $ipAddress, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paymentReference, paymentReference) ||
                other.paymentReference == paymentReference) &&
            (identical(other.paystackReference, paystackReference) ||
                other.paystackReference == paystackReference) &&
            (identical(other.authorizationUrl, authorizationUrl) ||
                other.authorizationUrl == authorizationUrl) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.gateway, gateway) || other.gateway == gateway) &&
            const DeepCollectionEquality().equals(
              other._gatewayResponse,
              _gatewayResponse,
            ) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.failedAt, failedAt) ||
                other.failedAt == failedAt) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.fees, fees) || other.fees == fees) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    orderId,
    userId,
    paymentReference,
    paystackReference,
    authorizationUrl,
    accessCode,
    status,
    paymentMethod,
    amount,
    currency,
    gateway,
    const DeepCollectionEquality().hash(_gatewayResponse),
    const DeepCollectionEquality().hash(_metadata),
    customerEmail,
    customerPhone,
    paidAt,
    failedAt,
    failureReason,
    fees,
    channel,
    ipAddress,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of PaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentEntityImplCopyWith<_$PaymentEntityImpl> get copyWith =>
      __$$PaymentEntityImplCopyWithImpl<_$PaymentEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentEntityImplToJson(this);
  }
}

abstract class _PaymentEntity extends PaymentEntity {
  const factory _PaymentEntity({
    final String? id,
    @JsonKey(name: 'order_id') final String? orderId,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'payment_reference') final String? paymentReference,
    @JsonKey(name: 'paystack_reference') final String? paystackReference,
    @JsonKey(name: 'authorization_url') final String? authorizationUrl,
    @JsonKey(name: 'access_code') final String? accessCode,
    final String? status,
    @JsonKey(name: 'payment_method') final String? paymentMethod,
    final String? amount,
    final String? currency,
    final String? gateway,
    @JsonKey(name: 'gateway_response')
    final Map<String, dynamic>? gatewayResponse,
    final Map<String, dynamic>? metadata,
    @JsonKey(name: 'customer_email') final String? customerEmail,
    @JsonKey(name: 'customer_phone') final String? customerPhone,
    @JsonKey(name: 'paid_at') final String? paidAt,
    @JsonKey(name: 'failed_at') final String? failedAt,
    @JsonKey(name: 'failure_reason') final String? failureReason,
    final String? fees,
    final String? channel,
    @JsonKey(name: 'ip_address') final String? ipAddress,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
  }) = _$PaymentEntityImpl;
  const _PaymentEntity._() : super._();

  factory _PaymentEntity.fromJson(Map<String, dynamic> json) =
      _$PaymentEntityImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'payment_reference')
  String? get paymentReference;
  @override
  @JsonKey(name: 'paystack_reference')
  String? get paystackReference;
  @override
  @JsonKey(name: 'authorization_url')
  String? get authorizationUrl;
  @override
  @JsonKey(name: 'access_code')
  String? get accessCode;
  @override
  String? get status;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  String? get amount;
  @override
  String? get currency;
  @override
  String? get gateway;
  @override
  @JsonKey(name: 'gateway_response')
  Map<String, dynamic>? get gatewayResponse;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(name: 'customer_email')
  String? get customerEmail;
  @override
  @JsonKey(name: 'customer_phone')
  String? get customerPhone;
  @override
  @JsonKey(name: 'paid_at')
  String? get paidAt;
  @override
  @JsonKey(name: 'failed_at')
  String? get failedAt;
  @override
  @JsonKey(name: 'failure_reason')
  String? get failureReason;
  @override
  String? get fees;
  @override
  String? get channel;
  @override
  @JsonKey(name: 'ip_address')
  String? get ipAddress;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of PaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentEntityImplCopyWith<_$PaymentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
