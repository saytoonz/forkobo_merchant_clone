// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_items_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderItemsEntity _$OrderItemsEntityFromJson(Map<String, dynamic> json) {
  return _OrderItemsEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderItemsEntity {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_description')
  String? get productDescription => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  String? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  String? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_options')
  @ProductOptionsConverter()
  Map<String, dynamic>? get productOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_data')
  ProductEntity? get product => throw _privateConstructorUsedError;

  /// Serializes this OrderItemsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemsEntityCopyWith<OrderItemsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemsEntityCopyWith<$Res> {
  factory $OrderItemsEntityCopyWith(
    OrderItemsEntity value,
    $Res Function(OrderItemsEntity) then,
  ) = _$OrderItemsEntityCopyWithImpl<$Res, OrderItemsEntity>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'product_id') String? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_description') String? productDescription,
    int quantity,
    @JsonKey(name: 'unit_price') String? unitPrice,
    @JsonKey(name: 'total_price') String? totalPrice,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    Map<String, dynamic>? productOptions,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'product_data') ProductEntity? product,
  });

  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class _$OrderItemsEntityCopyWithImpl<$Res, $Val extends OrderItemsEntity>
    implements $OrderItemsEntityCopyWith<$Res> {
  _$OrderItemsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? quantity = null,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
    Object? productOptions = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderId: freezed == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String?,
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            productDescription: freezed == productDescription
                ? _value.productDescription
                : productDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            unitPrice: freezed == unitPrice
                ? _value.unitPrice
                : unitPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalPrice: freezed == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            productOptions: freezed == productOptions
                ? _value.productOptions
                : productOptions // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            product: freezed == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                      as ProductEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderItemsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemsEntityImplCopyWith<$Res>
    implements $OrderItemsEntityCopyWith<$Res> {
  factory _$$OrderItemsEntityImplCopyWith(
    _$OrderItemsEntityImpl value,
    $Res Function(_$OrderItemsEntityImpl) then,
  ) = __$$OrderItemsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'product_id') String? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_description') String? productDescription,
    int quantity,
    @JsonKey(name: 'unit_price') String? unitPrice,
    @JsonKey(name: 'total_price') String? totalPrice,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    Map<String, dynamic>? productOptions,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'product_data') ProductEntity? product,
  });

  @override
  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class __$$OrderItemsEntityImplCopyWithImpl<$Res>
    extends _$OrderItemsEntityCopyWithImpl<$Res, _$OrderItemsEntityImpl>
    implements _$$OrderItemsEntityImplCopyWith<$Res> {
  __$$OrderItemsEntityImplCopyWithImpl(
    _$OrderItemsEntityImpl _value,
    $Res Function(_$OrderItemsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? quantity = null,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
    Object? productOptions = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(
      _$OrderItemsEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderId: freezed == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String?,
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        productDescription: freezed == productDescription
            ? _value.productDescription
            : productDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        unitPrice: freezed == unitPrice
            ? _value.unitPrice
            : unitPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalPrice: freezed == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        productOptions: freezed == productOptions
            ? _value._productOptions
            : productOptions // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        product: freezed == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                  as ProductEntity?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemsEntityImpl extends _OrderItemsEntity {
  const _$OrderItemsEntityImpl({
    this.id,
    @JsonKey(name: 'order_id') this.orderId,
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'product_name') this.productName,
    @JsonKey(name: 'product_description') this.productDescription,
    this.quantity = 1,
    @JsonKey(name: 'unit_price') this.unitPrice,
    @JsonKey(name: 'total_price') this.totalPrice,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    final Map<String, dynamic>? productOptions,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'product_data') this.product,
  }) : _productOptions = productOptions,
       super._();

  factory _$OrderItemsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemsEntityImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_description')
  final String? productDescription;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final String? unitPrice;
  @override
  @JsonKey(name: 'total_price')
  final String? totalPrice;
  final Map<String, dynamic>? _productOptions;
  @override
  @JsonKey(name: 'product_options')
  @ProductOptionsConverter()
  Map<String, dynamic>? get productOptions {
    final value = _productOptions;
    if (value == null) return null;
    if (_productOptions is EqualUnmodifiableMapView) return _productOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'product_data')
  final ProductEntity? product;

  @override
  String toString() {
    return 'OrderItemsEntity(id: $id, orderId: $orderId, productId: $productId, productName: $productName, productDescription: $productDescription, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice, productOptions: $productOptions, createdAt: $createdAt, updatedAt: $updatedAt, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality().equals(
              other._productOptions,
              _productOptions,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderId,
    productId,
    productName,
    productDescription,
    quantity,
    unitPrice,
    totalPrice,
    const DeepCollectionEquality().hash(_productOptions),
    createdAt,
    updatedAt,
    product,
  );

  /// Create a copy of OrderItemsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemsEntityImplCopyWith<_$OrderItemsEntityImpl> get copyWith =>
      __$$OrderItemsEntityImplCopyWithImpl<_$OrderItemsEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemsEntityImplToJson(this);
  }
}

abstract class _OrderItemsEntity extends OrderItemsEntity {
  const factory _OrderItemsEntity({
    final int? id,
    @JsonKey(name: 'order_id') final String? orderId,
    @JsonKey(name: 'product_id') final String? productId,
    @JsonKey(name: 'product_name') final String? productName,
    @JsonKey(name: 'product_description') final String? productDescription,
    final int quantity,
    @JsonKey(name: 'unit_price') final String? unitPrice,
    @JsonKey(name: 'total_price') final String? totalPrice,
    @JsonKey(name: 'product_options')
    @ProductOptionsConverter()
    final Map<String, dynamic>? productOptions,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'product_data') final ProductEntity? product,
  }) = _$OrderItemsEntityImpl;
  const _OrderItemsEntity._() : super._();

  factory _OrderItemsEntity.fromJson(Map<String, dynamic> json) =
      _$OrderItemsEntityImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_description')
  String? get productDescription;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'unit_price')
  String? get unitPrice;
  @override
  @JsonKey(name: 'total_price')
  String? get totalPrice;
  @override
  @JsonKey(name: 'product_options')
  @ProductOptionsConverter()
  Map<String, dynamic>? get productOptions;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'product_data')
  ProductEntity? get product;

  /// Create a copy of OrderItemsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemsEntityImplCopyWith<_$OrderItemsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
