// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_items_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemsEntityImpl _$$OrderItemsEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemsEntityImpl(
  id: (json['id'] as num?)?.toInt(),
  orderId: json['order_id'] as String?,
  productId: json['product_id'] as String?,
  productName: json['product_name'] as String?,
  productDescription: json['product_description'] as String?,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  unitPrice: json['unit_price'] as String?,
  totalPrice: json['total_price'] as String?,
  productOptions: const ProductOptionsConverter().fromJson(
    json['product_options'],
  ),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  product: json['product_data'] == null
      ? null
      : ProductEntity.fromJson(json['product_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OrderItemsEntityImplToJson(
  _$OrderItemsEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'order_id': instance.orderId,
  'product_id': instance.productId,
  'product_name': instance.productName,
  'product_description': instance.productDescription,
  'quantity': instance.quantity,
  'unit_price': instance.unitPrice,
  'total_price': instance.totalPrice,
  'product_options': const ProductOptionsConverter().toJson(
    instance.productOptions,
  ),
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'product_data': instance.product,
};
