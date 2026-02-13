// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentEntityImpl _$$PaymentEntityImplFromJson(Map<String, dynamic> json) =>
    _$PaymentEntityImpl(
      id: json['id'] as String?,
      orderId: json['order_id'] as String?,
      userId: json['user_id'] as String?,
      paymentReference: json['payment_reference'] as String?,
      paystackReference: json['paystack_reference'] as String?,
      authorizationUrl: json['authorization_url'] as String?,
      accessCode: json['access_code'] as String?,
      status: json['status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      gateway: json['gateway'] as String?,
      gatewayResponse: json['gateway_response'] as Map<String, dynamic>?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      customerEmail: json['customer_email'] as String?,
      customerPhone: json['customer_phone'] as String?,
      paidAt: json['paid_at'] as String?,
      failedAt: json['failed_at'] as String?,
      failureReason: json['failure_reason'] as String?,
      fees: json['fees'] as String?,
      channel: json['channel'] as String?,
      ipAddress: json['ip_address'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$PaymentEntityImplToJson(_$PaymentEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'payment_reference': instance.paymentReference,
      'paystack_reference': instance.paystackReference,
      'authorization_url': instance.authorizationUrl,
      'access_code': instance.accessCode,
      'status': instance.status,
      'payment_method': instance.paymentMethod,
      'amount': instance.amount,
      'currency': instance.currency,
      'gateway': instance.gateway,
      'gateway_response': instance.gatewayResponse,
      'metadata': instance.metadata,
      'customer_email': instance.customerEmail,
      'customer_phone': instance.customerPhone,
      'paid_at': instance.paidAt,
      'failed_at': instance.failedAt,
      'failure_reason': instance.failureReason,
      'fees': instance.fees,
      'channel': instance.channel,
      'ip_address': instance.ipAddress,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
