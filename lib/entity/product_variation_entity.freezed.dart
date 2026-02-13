// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductVariationEntity _$ProductVariationEntityFromJson(
  Map<String, dynamic> json,
) {
  return _ProductVariationEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductVariationEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_quantity')
  int get stockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_adjustment')
  num get priceAdjustment => throw _privateConstructorUsedError;

  /// Serializes this ProductVariationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariationEntityCopyWith<ProductVariationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationEntityCopyWith<$Res> {
  factory $ProductVariationEntityCopyWith(
    ProductVariationEntity value,
    $Res Function(ProductVariationEntity) then,
  ) = _$ProductVariationEntityCopyWithImpl<$Res, ProductVariationEntity>;
  @useResult
  $Res call({
    String? name,
    String? type,
    String? value,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'stock_quantity') int stockQuantity,
    @JsonKey(name: 'price_adjustment') num priceAdjustment,
  });
}

/// @nodoc
class _$ProductVariationEntityCopyWithImpl<
  $Res,
  $Val extends ProductVariationEntity
>
    implements $ProductVariationEntityCopyWith<$Res> {
  _$ProductVariationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? imageUrl = freezed,
    Object? isAvailable = null,
    Object? stockQuantity = null,
    Object? priceAdjustment = null,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            stockQuantity: null == stockQuantity
                ? _value.stockQuantity
                : stockQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            priceAdjustment: null == priceAdjustment
                ? _value.priceAdjustment
                : priceAdjustment // ignore: cast_nullable_to_non_nullable
                      as num,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductVariationEntityImplCopyWith<$Res>
    implements $ProductVariationEntityCopyWith<$Res> {
  factory _$$ProductVariationEntityImplCopyWith(
    _$ProductVariationEntityImpl value,
    $Res Function(_$ProductVariationEntityImpl) then,
  ) = __$$ProductVariationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    String? type,
    String? value,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'stock_quantity') int stockQuantity,
    @JsonKey(name: 'price_adjustment') num priceAdjustment,
  });
}

/// @nodoc
class __$$ProductVariationEntityImplCopyWithImpl<$Res>
    extends
        _$ProductVariationEntityCopyWithImpl<$Res, _$ProductVariationEntityImpl>
    implements _$$ProductVariationEntityImplCopyWith<$Res> {
  __$$ProductVariationEntityImplCopyWithImpl(
    _$ProductVariationEntityImpl _value,
    $Res Function(_$ProductVariationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductVariationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? imageUrl = freezed,
    Object? isAvailable = null,
    Object? stockQuantity = null,
    Object? priceAdjustment = null,
  }) {
    return _then(
      _$ProductVariationEntityImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        stockQuantity: null == stockQuantity
            ? _value.stockQuantity
            : stockQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        priceAdjustment: null == priceAdjustment
            ? _value.priceAdjustment
            : priceAdjustment // ignore: cast_nullable_to_non_nullable
                  as num,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariationEntityImpl extends _ProductVariationEntity {
  const _$ProductVariationEntityImpl({
    this.name,
    this.type,
    this.value,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'is_available') this.isAvailable = true,
    @JsonKey(name: 'stock_quantity') this.stockQuantity = 0,
    @JsonKey(name: 'price_adjustment') this.priceAdjustment = 0,
  }) : super._();

  factory _$ProductVariationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariationEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? value;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;
  @override
  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;
  @override
  @JsonKey(name: 'price_adjustment')
  final num priceAdjustment;

  @override
  String toString() {
    return 'ProductVariationEntity(name: $name, type: $type, value: $value, imageUrl: $imageUrl, isAvailable: $isAvailable, stockQuantity: $stockQuantity, priceAdjustment: $priceAdjustment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.priceAdjustment, priceAdjustment) ||
                other.priceAdjustment == priceAdjustment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    type,
    value,
    imageUrl,
    isAvailable,
    stockQuantity,
    priceAdjustment,
  );

  /// Create a copy of ProductVariationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariationEntityImplCopyWith<_$ProductVariationEntityImpl>
  get copyWith =>
      __$$ProductVariationEntityImplCopyWithImpl<_$ProductVariationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariationEntityImplToJson(this);
  }
}

abstract class _ProductVariationEntity extends ProductVariationEntity {
  const factory _ProductVariationEntity({
    final String? name,
    final String? type,
    final String? value,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'is_available') final bool isAvailable,
    @JsonKey(name: 'stock_quantity') final int stockQuantity,
    @JsonKey(name: 'price_adjustment') final num priceAdjustment,
  }) = _$ProductVariationEntityImpl;
  const _ProductVariationEntity._() : super._();

  factory _ProductVariationEntity.fromJson(Map<String, dynamic> json) =
      _$ProductVariationEntityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get value;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(name: 'stock_quantity')
  int get stockQuantity;
  @override
  @JsonKey(name: 'price_adjustment')
  num get priceAdjustment;

  /// Create a copy of ProductVariationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariationEntityImplCopyWith<_$ProductVariationEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
