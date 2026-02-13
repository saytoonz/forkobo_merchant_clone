// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderEntityImpl(
  id: json['id'] as String?,
  orderNumber: json['order_number'] as String?,
  shopId: json['shop_id'] as String?,
  status: json['status'] as String?,
  subtotal: json['subtotal'] as String?,
  taxAmount: json['tax_amount'] as String?,
  shippingFee: json['shipping_fee'] as String?,
  totalAmount: json['total_amount'] as String?,
  currency: json['currency'] as String?,
  shippingAddress: json['shipping_address'] == null
      ? null
      : AdressEntity.fromJson(json['shipping_address'] as Map<String, dynamic>),
  billingAddress: json['billing_address'] == null
      ? null
      : AdressEntity.fromJson(json['billing_address'] as Map<String, dynamic>),
  notes: json['notes'] as String?,
  confirmedAt: json['confirmed_at'] as String?,
  shippedAt: json['shipped_at'] as String?,
  deliveredAt: json['delivered_at'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  payment: json['payment'] == null
      ? null
      : PaymentEntity.fromJson(json['payment'] as Map<String, dynamic>),
  orderItems:
      (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItemsEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'shop_id': instance.shopId,
      'status': instance.status,
      'subtotal': instance.subtotal,
      'tax_amount': instance.taxAmount,
      'shipping_fee': instance.shippingFee,
      'total_amount': instance.totalAmount,
      'currency': instance.currency,
      'shipping_address': instance.shippingAddress,
      'billing_address': instance.billingAddress,
      'notes': instance.notes,
      'confirmed_at': instance.confirmedAt,
      'shipped_at': instance.shippedAt,
      'delivered_at': instance.deliveredAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'payment': instance.payment,
      'order_items': instance.orderItems,
    };

_$AdressEntityImpl _$$AdressEntityImplFromJson(Map<String, dynamic> json) =>
    _$AdressEntityImpl(
      city: json['city'] as String?,
      state: json['state'] as String?,
      street: json['street'] as String?,
      country: json['country'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$AdressEntityImplToJson(_$AdressEntityImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'street': instance.street,
      'country': instance.country,
      'postal_code': instance.postalCode,
    };
