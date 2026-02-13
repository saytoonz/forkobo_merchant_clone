// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartEntity _$CartEntityFromJson(Map<String, dynamic> json) {
  return _CartEntity.fromJson(json);
}

/// @nodoc
mixin _$CartEntity {
  String get id => throw _privateConstructorUsedError;
  ShopEntity get shop => throw _privateConstructorUsedError;
  num get subtotal => throw _privateConstructorUsedError;
  List<CartData> get cartData => throw _privateConstructorUsedError;

  /// Serializes this CartEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartEntityCopyWith<CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEntityCopyWith<$Res> {
  factory $CartEntityCopyWith(
    CartEntity value,
    $Res Function(CartEntity) then,
  ) = _$CartEntityCopyWithImpl<$Res, CartEntity>;
  @useResult
  $Res call({
    String id,
    ShopEntity shop,
    num subtotal,
    List<CartData> cartData,
  });

  $ShopEntityCopyWith<$Res> get shop;
}

/// @nodoc
class _$CartEntityCopyWithImpl<$Res, $Val extends CartEntity>
    implements $CartEntityCopyWith<$Res> {
  _$CartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = null,
    Object? subtotal = null,
    Object? cartData = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            shop: null == shop
                ? _value.shop
                : shop // ignore: cast_nullable_to_non_nullable
                      as ShopEntity,
            subtotal: null == subtotal
                ? _value.subtotal
                : subtotal // ignore: cast_nullable_to_non_nullable
                      as num,
            cartData: null == cartData
                ? _value.cartData
                : cartData // ignore: cast_nullable_to_non_nullable
                      as List<CartData>,
          )
          as $Val,
    );
  }

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopEntityCopyWith<$Res> get shop {
    return $ShopEntityCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartEntityImplCopyWith<$Res>
    implements $CartEntityCopyWith<$Res> {
  factory _$$CartEntityImplCopyWith(
    _$CartEntityImpl value,
    $Res Function(_$CartEntityImpl) then,
  ) = __$$CartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    ShopEntity shop,
    num subtotal,
    List<CartData> cartData,
  });

  @override
  $ShopEntityCopyWith<$Res> get shop;
}

/// @nodoc
class __$$CartEntityImplCopyWithImpl<$Res>
    extends _$CartEntityCopyWithImpl<$Res, _$CartEntityImpl>
    implements _$$CartEntityImplCopyWith<$Res> {
  __$$CartEntityImplCopyWithImpl(
    _$CartEntityImpl _value,
    $Res Function(_$CartEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shop = null,
    Object? subtotal = null,
    Object? cartData = null,
  }) {
    return _then(
      _$CartEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        shop: null == shop
            ? _value.shop
            : shop // ignore: cast_nullable_to_non_nullable
                  as ShopEntity,
        subtotal: null == subtotal
            ? _value.subtotal
            : subtotal // ignore: cast_nullable_to_non_nullable
                  as num,
        cartData: null == cartData
            ? _value._cartData
            : cartData // ignore: cast_nullable_to_non_nullable
                  as List<CartData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartEntityImpl extends _CartEntity {
  const _$CartEntityImpl({
    required this.id,
    required this.shop,
    this.subtotal = 0,
    final List<CartData> cartData = const [],
  }) : _cartData = cartData,
       super._();

  factory _$CartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartEntityImplFromJson(json);

  @override
  final String id;
  @override
  final ShopEntity shop;
  @override
  @JsonKey()
  final num subtotal;
  final List<CartData> _cartData;
  @override
  @JsonKey()
  List<CartData> get cartData {
    if (_cartData is EqualUnmodifiableListView) return _cartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartData);
  }

  @override
  String toString() {
    return 'CartEntity(id: $id, shop: $shop, subtotal: $subtotal, cartData: $cartData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            const DeepCollectionEquality().equals(other._cartData, _cartData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    shop,
    subtotal,
    const DeepCollectionEquality().hash(_cartData),
  );

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEntityImplCopyWith<_$CartEntityImpl> get copyWith =>
      __$$CartEntityImplCopyWithImpl<_$CartEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartEntityImplToJson(this);
  }
}

abstract class _CartEntity extends CartEntity {
  const factory _CartEntity({
    required final String id,
    required final ShopEntity shop,
    final num subtotal,
    final List<CartData> cartData,
  }) = _$CartEntityImpl;
  const _CartEntity._() : super._();

  factory _CartEntity.fromJson(Map<String, dynamic> json) =
      _$CartEntityImpl.fromJson;

  @override
  String get id;
  @override
  ShopEntity get shop;
  @override
  num get subtotal;
  @override
  List<CartData> get cartData;

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartEntityImplCopyWith<_$CartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartData _$CartDataFromJson(Map<String, dynamic> json) {
  return _CartData.fromJson(json);
}

/// @nodoc
mixin _$CartData {
  @JsonKey(name: 'cart_item_id')
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  num get subSubtotal => throw _privateConstructorUsedError;
  ProductEntity get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_options')
  @ProductOptionsConverter()
  Map<String, dynamic> get productOptions => throw _privateConstructorUsedError;

  /// Serializes this CartData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartDataCopyWith<CartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataCopyWith<$Res> {
  factory $CartDataCopyWith(CartData value, $Res Function(CartData) then) =
      _$CartDataCopyWithImpl<$Res, CartData>;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_item_id') int id,
    int quantity,
    num subSubtotal,
    ProductEntity product,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    Map<String, dynamic> productOptions,
  });

  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class _$CartDataCopyWithImpl<$Res, $Val extends CartData>
    implements $CartDataCopyWith<$Res> {
  _$CartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? subSubtotal = null,
    Object? product = null,
    Object? productOptions = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            subSubtotal: null == subSubtotal
                ? _value.subSubtotal
                : subSubtotal // ignore: cast_nullable_to_non_nullable
                      as num,
            product: null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                      as ProductEntity,
            productOptions: null == productOptions
                ? _value.productOptions
                : productOptions // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }

  /// Create a copy of CartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartDataImplCopyWith<$Res>
    implements $CartDataCopyWith<$Res> {
  factory _$$CartDataImplCopyWith(
    _$CartDataImpl value,
    $Res Function(_$CartDataImpl) then,
  ) = __$$CartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_item_id') int id,
    int quantity,
    num subSubtotal,
    ProductEntity product,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    Map<String, dynamic> productOptions,
  });

  @override
  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$CartDataImplCopyWithImpl<$Res>
    extends _$CartDataCopyWithImpl<$Res, _$CartDataImpl>
    implements _$$CartDataImplCopyWith<$Res> {
  __$$CartDataImplCopyWithImpl(
    _$CartDataImpl _value,
    $Res Function(_$CartDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? subSubtotal = null,
    Object? product = null,
    Object? productOptions = null,
  }) {
    return _then(
      _$CartDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        subSubtotal: null == subSubtotal
            ? _value.subSubtotal
            : subSubtotal // ignore: cast_nullable_to_non_nullable
                  as num,
        product: null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                  as ProductEntity,
        productOptions: null == productOptions
            ? _value._productOptions
            : productOptions // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartDataImpl extends _CartData {
  const _$CartDataImpl({
    @JsonKey(name: 'cart_item_id') required this.id,
    this.quantity = 1,
    this.subSubtotal = 0,
    required this.product,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    final Map<String, dynamic> productOptions = const {},
  }) : _productOptions = productOptions,
       super._();

  factory _$CartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartDataImplFromJson(json);

  @override
  @JsonKey(name: 'cart_item_id')
  final int id;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final num subSubtotal;
  @override
  final ProductEntity product;
  final Map<String, dynamic> _productOptions;
  @override
  @JsonKey(name: 'product_options')
  @ProductOptionsConverter()
  Map<String, dynamic> get productOptions {
    if (_productOptions is EqualUnmodifiableMapView) return _productOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_productOptions);
  }

  @override
  String toString() {
    return 'CartData(id: $id, quantity: $quantity, subSubtotal: $subSubtotal, product: $product, productOptions: $productOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subSubtotal, subSubtotal) ||
                other.subSubtotal == subSubtotal) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(
              other._productOptions,
              _productOptions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    quantity,
    subSubtotal,
    product,
    const DeepCollectionEquality().hash(_productOptions),
  );

  /// Create a copy of CartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDataImplCopyWith<_$CartDataImpl> get copyWith =>
      __$$CartDataImplCopyWithImpl<_$CartDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartDataImplToJson(this);
  }
}

abstract class _CartData extends CartData {
  const factory _CartData({
    @JsonKey(name: 'cart_item_id') required final int id,
    final int quantity,
    final num subSubtotal,
    required final ProductEntity product,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    final Map<String, dynamic> productOptions,
  }) = _$CartDataImpl;
  const _CartData._() : super._();

  factory _CartData.fromJson(Map<String, dynamic> json) =
      _$CartDataImpl.fromJson;

  @override
  @JsonKey(name: 'cart_item_id')
  int get id;
  @override
  int get quantity;
  @override
  num get subSubtotal;
  @override
  ProductEntity get product;
  @override
  @JsonKey(name: 'product_options')
  @ProductOptionsConverter()
  Map<String, dynamic> get productOptions;

  /// Create a copy of CartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartDataImplCopyWith<_$CartDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
