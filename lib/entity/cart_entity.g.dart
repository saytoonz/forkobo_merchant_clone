// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartEntityImpl _$$CartEntityImplFromJson(Map<String, dynamic> json) =>
    _$CartEntityImpl(
      id: json['id'] as String,
      shop: ShopEntity.fromJson(json['shop'] as Map<String, dynamic>),
      subtotal: json['subtotal'] as num? ?? 0,
      cartData:
          (json['cartData'] as List<dynamic>?)
              ?.map((e) => CartData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CartEntityImplToJson(_$CartEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop': instance.shop,
      'subtotal': instance.subtotal,
      'cartData': instance.cartData,
    };

_$CartDataImpl _$$CartDataImplFromJson(Map<String, dynamic> json) =>
    _$CartDataImpl(
      id: (json['cart_item_id'] as num).toInt(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      subSubtotal: json['subSubtotal'] as num? ?? 0,
      product: ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      productOptions:
          json['product_options'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$CartDataImplToJson(_$CartDataImpl instance) =>
    <String, dynamic>{
      'cart_item_id': instance.id,
      'quantity': instance.quantity,
      'subSubtotal': instance.subSubtotal,
      'product': instance.product,
      'product_options': instance.productOptions,
    };
