// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError; // @JsonKey(name: 'user_id') String? userId,
  @JsonKey(name: 'shop_id')
  String? get shopId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  String? get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_fee')
  String? get shippingFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  String? get totalAmount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  AdressEntity? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'billing_address')
  AdressEntity? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmed_at')
  String? get confirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipped_at')
  String? get shippedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivered_at')
  String? get deliveredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  PaymentEntity? get payment => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_items')
  List<OrderItemsEntity> get orderItems => throw _privateConstructorUsedError;

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
    OrderEntity value,
    $Res Function(OrderEntity) then,
  ) = _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'order_number') String? orderNumber,
    @JsonKey(name: 'shop_id') String? shopId,
    String? status,
    String? subtotal,
    @JsonKey(name: 'tax_amount') String? taxAmount,
    @JsonKey(name: 'shipping_fee') String? shippingFee,
    @JsonKey(name: 'total_amount') String? totalAmount,
    String? currency,
    @JsonKey(name: 'shipping_address') AdressEntity? shippingAddress,
    @JsonKey(name: 'billing_address') AdressEntity? billingAddress,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'confirmed_at') String? confirmedAt,
    @JsonKey(name: 'shipped_at') String? shippedAt,
    @JsonKey(name: 'delivered_at') String? deliveredAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    PaymentEntity? payment,
    @JsonKey(name: 'order_items') List<OrderItemsEntity> orderItems,
  });

  $AdressEntityCopyWith<$Res>? get shippingAddress;
  $AdressEntityCopyWith<$Res>? get billingAddress;
  $PaymentEntityCopyWith<$Res>? get payment;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? shopId = freezed,
    Object? status = freezed,
    Object? subtotal = freezed,
    Object? taxAmount = freezed,
    Object? shippingFee = freezed,
    Object? totalAmount = freezed,
    Object? currency = freezed,
    Object? shippingAddress = freezed,
    Object? billingAddress = freezed,
    Object? notes = freezed,
    Object? confirmedAt = freezed,
    Object? shippedAt = freezed,
    Object? deliveredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? payment = freezed,
    Object? orderItems = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderNumber: freezed == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            shopId: freezed == shopId
                ? _value.shopId
                : shopId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            subtotal: freezed == subtotal
                ? _value.subtotal
                : subtotal // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxAmount: freezed == taxAmount
                ? _value.taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingFee: freezed == shippingFee
                ? _value.shippingFee
                : shippingFee // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalAmount: freezed == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            currency: freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingAddress: freezed == shippingAddress
                ? _value.shippingAddress
                : shippingAddress // ignore: cast_nullable_to_non_nullable
                      as AdressEntity?,
            billingAddress: freezed == billingAddress
                ? _value.billingAddress
                : billingAddress // ignore: cast_nullable_to_non_nullable
                      as AdressEntity?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            confirmedAt: freezed == confirmedAt
                ? _value.confirmedAt
                : confirmedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippedAt: freezed == shippedAt
                ? _value.shippedAt
                : shippedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            deliveredAt: freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            payment: freezed == payment
                ? _value.payment
                : payment // ignore: cast_nullable_to_non_nullable
                      as PaymentEntity?,
            orderItems: null == orderItems
                ? _value.orderItems
                : orderItems // ignore: cast_nullable_to_non_nullable
                      as List<OrderItemsEntity>,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdressEntityCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $AdressEntityCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdressEntityCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $AdressEntityCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentEntityCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentEntityCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
    _$OrderEntityImpl value,
    $Res Function(_$OrderEntityImpl) then,
  ) = __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'order_number') String? orderNumber,
    @JsonKey(name: 'shop_id') String? shopId,
    String? status,
    String? subtotal,
    @JsonKey(name: 'tax_amount') String? taxAmount,
    @JsonKey(name: 'shipping_fee') String? shippingFee,
    @JsonKey(name: 'total_amount') String? totalAmount,
    String? currency,
    @JsonKey(name: 'shipping_address') AdressEntity? shippingAddress,
    @JsonKey(name: 'billing_address') AdressEntity? billingAddress,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'confirmed_at') String? confirmedAt,
    @JsonKey(name: 'shipped_at') String? shippedAt,
    @JsonKey(name: 'delivered_at') String? deliveredAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    PaymentEntity? payment,
    @JsonKey(name: 'order_items') List<OrderItemsEntity> orderItems,
  });

  @override
  $AdressEntityCopyWith<$Res>? get shippingAddress;
  @override
  $AdressEntityCopyWith<$Res>? get billingAddress;
  @override
  $PaymentEntityCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
    _$OrderEntityImpl _value,
    $Res Function(_$OrderEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? shopId = freezed,
    Object? status = freezed,
    Object? subtotal = freezed,
    Object? taxAmount = freezed,
    Object? shippingFee = freezed,
    Object? totalAmount = freezed,
    Object? currency = freezed,
    Object? shippingAddress = freezed,
    Object? billingAddress = freezed,
    Object? notes = freezed,
    Object? confirmedAt = freezed,
    Object? shippedAt = freezed,
    Object? deliveredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? payment = freezed,
    Object? orderItems = null,
  }) {
    return _then(
      _$OrderEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderNumber: freezed == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        shopId: freezed == shopId
            ? _value.shopId
            : shopId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        subtotal: freezed == subtotal
            ? _value.subtotal
            : subtotal // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxAmount: freezed == taxAmount
            ? _value.taxAmount
            : taxAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingFee: freezed == shippingFee
            ? _value.shippingFee
            : shippingFee // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalAmount: freezed == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        currency: freezed == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingAddress: freezed == shippingAddress
            ? _value.shippingAddress
            : shippingAddress // ignore: cast_nullable_to_non_nullable
                  as AdressEntity?,
        billingAddress: freezed == billingAddress
            ? _value.billingAddress
            : billingAddress // ignore: cast_nullable_to_non_nullable
                  as AdressEntity?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        confirmedAt: freezed == confirmedAt
            ? _value.confirmedAt
            : confirmedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippedAt: freezed == shippedAt
            ? _value.shippedAt
            : shippedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        deliveredAt: freezed == deliveredAt
            ? _value.deliveredAt
            : deliveredAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        payment: freezed == payment
            ? _value.payment
            : payment // ignore: cast_nullable_to_non_nullable
                  as PaymentEntity?,
        orderItems: null == orderItems
            ? _value._orderItems
            : orderItems // ignore: cast_nullable_to_non_nullable
                  as List<OrderItemsEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl extends _OrderEntity {
  const _$OrderEntityImpl({
    this.id,
    @JsonKey(name: 'order_number') this.orderNumber,
    @JsonKey(name: 'shop_id') this.shopId,
    this.status,
    this.subtotal,
    @JsonKey(name: 'tax_amount') this.taxAmount,
    @JsonKey(name: 'shipping_fee') this.shippingFee,
    @JsonKey(name: 'total_amount') this.totalAmount,
    this.currency,
    @JsonKey(name: 'shipping_address') this.shippingAddress,
    @JsonKey(name: 'billing_address') this.billingAddress,
    @JsonKey(name: 'notes') this.notes,
    @JsonKey(name: 'confirmed_at') this.confirmedAt,
    @JsonKey(name: 'shipped_at') this.shippedAt,
    @JsonKey(name: 'delivered_at') this.deliveredAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.payment,
    @JsonKey(name: 'order_items')
    final List<OrderItemsEntity> orderItems = const [],
  }) : _orderItems = orderItems,
       super._();

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'order_number')
  final String? orderNumber;
  // @JsonKey(name: 'user_id') String? userId,
  @override
  @JsonKey(name: 'shop_id')
  final String? shopId;
  @override
  final String? status;
  @override
  final String? subtotal;
  @override
  @JsonKey(name: 'tax_amount')
  final String? taxAmount;
  @override
  @JsonKey(name: 'shipping_fee')
  final String? shippingFee;
  @override
  @JsonKey(name: 'total_amount')
  final String? totalAmount;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'shipping_address')
  final AdressEntity? shippingAddress;
  @override
  @JsonKey(name: 'billing_address')
  final AdressEntity? billingAddress;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'confirmed_at')
  final String? confirmedAt;
  @override
  @JsonKey(name: 'shipped_at')
  final String? shippedAt;
  @override
  @JsonKey(name: 'delivered_at')
  final String? deliveredAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final PaymentEntity? payment;
  final List<OrderItemsEntity> _orderItems;
  @override
  @JsonKey(name: 'order_items')
  List<OrderItemsEntity> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  String toString() {
    return 'OrderEntity(id: $id, orderNumber: $orderNumber, shopId: $shopId, status: $status, subtotal: $subtotal, taxAmount: $taxAmount, shippingFee: $shippingFee, totalAmount: $totalAmount, currency: $currency, shippingAddress: $shippingAddress, billingAddress: $billingAddress, notes: $notes, confirmedAt: $confirmedAt, shippedAt: $shippedAt, deliveredAt: $deliveredAt, createdAt: $createdAt, updatedAt: $updatedAt, payment: $payment, orderItems: $orderItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.shippedAt, shippedAt) ||
                other.shippedAt == shippedAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality().equals(
              other._orderItems,
              _orderItems,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    orderNumber,
    shopId,
    status,
    subtotal,
    taxAmount,
    shippingFee,
    totalAmount,
    currency,
    shippingAddress,
    billingAddress,
    notes,
    confirmedAt,
    shippedAt,
    deliveredAt,
    createdAt,
    updatedAt,
    payment,
    const DeepCollectionEquality().hash(_orderItems),
  ]);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(this);
  }
}

abstract class _OrderEntity extends OrderEntity {
  const factory _OrderEntity({
    final String? id,
    @JsonKey(name: 'order_number') final String? orderNumber,
    @JsonKey(name: 'shop_id') final String? shopId,
    final String? status,
    final String? subtotal,
    @JsonKey(name: 'tax_amount') final String? taxAmount,
    @JsonKey(name: 'shipping_fee') final String? shippingFee,
    @JsonKey(name: 'total_amount') final String? totalAmount,
    final String? currency,
    @JsonKey(name: 'shipping_address') final AdressEntity? shippingAddress,
    @JsonKey(name: 'billing_address') final AdressEntity? billingAddress,
    @JsonKey(name: 'notes') final String? notes,
    @JsonKey(name: 'confirmed_at') final String? confirmedAt,
    @JsonKey(name: 'shipped_at') final String? shippedAt,
    @JsonKey(name: 'delivered_at') final String? deliveredAt,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    final PaymentEntity? payment,
    @JsonKey(name: 'order_items') final List<OrderItemsEntity> orderItems,
  }) = _$OrderEntityImpl;
  const _OrderEntity._() : super._();

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'order_number')
  String? get orderNumber; // @JsonKey(name: 'user_id') String? userId,
  @override
  @JsonKey(name: 'shop_id')
  String? get shopId;
  @override
  String? get status;
  @override
  String? get subtotal;
  @override
  @JsonKey(name: 'tax_amount')
  String? get taxAmount;
  @override
  @JsonKey(name: 'shipping_fee')
  String? get shippingFee;
  @override
  @JsonKey(name: 'total_amount')
  String? get totalAmount;
  @override
  String? get currency;
  @override
  @JsonKey(name: 'shipping_address')
  AdressEntity? get shippingAddress;
  @override
  @JsonKey(name: 'billing_address')
  AdressEntity? get billingAddress;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'confirmed_at')
  String? get confirmedAt;
  @override
  @JsonKey(name: 'shipped_at')
  String? get shippedAt;
  @override
  @JsonKey(name: 'delivered_at')
  String? get deliveredAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  PaymentEntity? get payment;
  @override
  @JsonKey(name: 'order_items')
  List<OrderItemsEntity> get orderItems;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdressEntity _$AdressEntityFromJson(Map<String, dynamic> json) {
  return _AdressEntity.fromJson(json);
}

/// @nodoc
mixin _$AdressEntity {
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;

  /// Serializes this AdressEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdressEntityCopyWith<AdressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdressEntityCopyWith<$Res> {
  factory $AdressEntityCopyWith(
    AdressEntity value,
    $Res Function(AdressEntity) then,
  ) = _$AdressEntityCopyWithImpl<$Res, AdressEntity>;
  @useResult
  $Res call({
    String? city,
    String? state,
    String? street,
    String? country,
    @JsonKey(name: 'postal_code') String? postalCode,
  });
}

/// @nodoc
class _$AdressEntityCopyWithImpl<$Res, $Val extends AdressEntity>
    implements $AdressEntityCopyWith<$Res> {
  _$AdressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? state = freezed,
    Object? street = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(
      _value.copyWith(
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String?,
            street: freezed == street
                ? _value.street
                : street // ignore: cast_nullable_to_non_nullable
                      as String?,
            country: freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String?,
            postalCode: freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdressEntityImplCopyWith<$Res>
    implements $AdressEntityCopyWith<$Res> {
  factory _$$AdressEntityImplCopyWith(
    _$AdressEntityImpl value,
    $Res Function(_$AdressEntityImpl) then,
  ) = __$$AdressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? city,
    String? state,
    String? street,
    String? country,
    @JsonKey(name: 'postal_code') String? postalCode,
  });
}

/// @nodoc
class __$$AdressEntityImplCopyWithImpl<$Res>
    extends _$AdressEntityCopyWithImpl<$Res, _$AdressEntityImpl>
    implements _$$AdressEntityImplCopyWith<$Res> {
  __$$AdressEntityImplCopyWithImpl(
    _$AdressEntityImpl _value,
    $Res Function(_$AdressEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? state = freezed,
    Object? street = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(
      _$AdressEntityImpl(
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        street: freezed == street
            ? _value.street
            : street // ignore: cast_nullable_to_non_nullable
                  as String?,
        country: freezed == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String?,
        postalCode: freezed == postalCode
            ? _value.postalCode
            : postalCode // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdressEntityImpl extends _AdressEntity {
  const _$AdressEntityImpl({
    this.city,
    this.state,
    this.street,
    this.country,
    @JsonKey(name: 'postal_code') this.postalCode,
  }) : super._();

  factory _$AdressEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdressEntityImplFromJson(json);

  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? street;
  @override
  final String? country;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  @override
  String toString() {
    return 'AdressEntity(city: $city, state: $state, street: $street, country: $country, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdressEntityImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, city, state, street, country, postalCode);

  /// Create a copy of AdressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdressEntityImplCopyWith<_$AdressEntityImpl> get copyWith =>
      __$$AdressEntityImplCopyWithImpl<_$AdressEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdressEntityImplToJson(this);
  }
}

abstract class _AdressEntity extends AdressEntity {
  const factory _AdressEntity({
    final String? city,
    final String? state,
    final String? street,
    final String? country,
    @JsonKey(name: 'postal_code') final String? postalCode,
  }) = _$AdressEntityImpl;
  const _AdressEntity._() : super._();

  factory _AdressEntity.fromJson(Map<String, dynamic> json) =
      _$AdressEntityImpl.fromJson;

  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get street;
  @override
  String? get country;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;

  /// Create a copy of AdressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdressEntityImplCopyWith<_$AdressEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
