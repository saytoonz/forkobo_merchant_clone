// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_discount_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductDiscountEntity _$ProductDiscountEntityFromJson(
  Map<String, dynamic> json,
) {
  return _ProductDiscountEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductDiscountEntity {
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_value')
  num get discountValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  num get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_price')
  num get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_savings')
  num get discountSavings => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'starts_at')
  String? get startsAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ends_at')
  String? get endsAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_flash_sale')
  bool get isFlashSale => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_quantity')
  int get maxQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_quantity')
  int get usedQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_quantity')
  int get remainingQuantity => throw _privateConstructorUsedError;

  /// Serializes this ProductDiscountEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDiscountEntityCopyWith<ProductDiscountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDiscountEntityCopyWith<$Res> {
  factory $ProductDiscountEntityCopyWith(
    ProductDiscountEntity value,
    $Res Function(ProductDiscountEntity) then,
  ) = _$ProductDiscountEntityCopyWithImpl<$Res, ProductDiscountEntity>;
  @useResult
  $Res call({
    @JsonKey(name: 'has_discount') bool hasDiscount,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') num discountValue,
    @JsonKey(name: 'discount_percentage') num discountPercentage,
    @JsonKey(name: 'discounted_price') num discountedPrice,
    @JsonKey(name: 'discount_savings') num discountSavings,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'starts_at') String? startsAt,
    @JsonKey(name: 'ends_at') String? endsAt,
    @JsonKey(name: 'is_flash_sale') bool isFlashSale,
    @JsonKey(name: 'max_quantity') int maxQuantity,
    @JsonKey(name: 'used_quantity') int usedQuantity,
    @JsonKey(name: 'remaining_quantity') int remainingQuantity,
  });
}

/// @nodoc
class _$ProductDiscountEntityCopyWithImpl<
  $Res,
  $Val extends ProductDiscountEntity
>
    implements $ProductDiscountEntityCopyWith<$Res> {
  _$ProductDiscountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasDiscount = null,
    Object? discountType = freezed,
    Object? discountValue = null,
    Object? discountPercentage = null,
    Object? discountedPrice = null,
    Object? discountSavings = null,
    Object? isActive = null,
    Object? isAvailable = null,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isFlashSale = null,
    Object? maxQuantity = null,
    Object? usedQuantity = null,
    Object? remainingQuantity = null,
  }) {
    return _then(
      _value.copyWith(
            hasDiscount: null == hasDiscount
                ? _value.hasDiscount
                : hasDiscount // ignore: cast_nullable_to_non_nullable
                      as bool,
            discountType: freezed == discountType
                ? _value.discountType
                : discountType // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountValue: null == discountValue
                ? _value.discountValue
                : discountValue // ignore: cast_nullable_to_non_nullable
                      as num,
            discountPercentage: null == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                      as num,
            discountedPrice: null == discountedPrice
                ? _value.discountedPrice
                : discountedPrice // ignore: cast_nullable_to_non_nullable
                      as num,
            discountSavings: null == discountSavings
                ? _value.discountSavings
                : discountSavings // ignore: cast_nullable_to_non_nullable
                      as num,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            startsAt: freezed == startsAt
                ? _value.startsAt
                : startsAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            endsAt: freezed == endsAt
                ? _value.endsAt
                : endsAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            isFlashSale: null == isFlashSale
                ? _value.isFlashSale
                : isFlashSale // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxQuantity: null == maxQuantity
                ? _value.maxQuantity
                : maxQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            usedQuantity: null == usedQuantity
                ? _value.usedQuantity
                : usedQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            remainingQuantity: null == remainingQuantity
                ? _value.remainingQuantity
                : remainingQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDiscountEntityImplCopyWith<$Res>
    implements $ProductDiscountEntityCopyWith<$Res> {
  factory _$$ProductDiscountEntityImplCopyWith(
    _$ProductDiscountEntityImpl value,
    $Res Function(_$ProductDiscountEntityImpl) then,
  ) = __$$ProductDiscountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'has_discount') bool hasDiscount,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') num discountValue,
    @JsonKey(name: 'discount_percentage') num discountPercentage,
    @JsonKey(name: 'discounted_price') num discountedPrice,
    @JsonKey(name: 'discount_savings') num discountSavings,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'starts_at') String? startsAt,
    @JsonKey(name: 'ends_at') String? endsAt,
    @JsonKey(name: 'is_flash_sale') bool isFlashSale,
    @JsonKey(name: 'max_quantity') int maxQuantity,
    @JsonKey(name: 'used_quantity') int usedQuantity,
    @JsonKey(name: 'remaining_quantity') int remainingQuantity,
  });
}

/// @nodoc
class __$$ProductDiscountEntityImplCopyWithImpl<$Res>
    extends
        _$ProductDiscountEntityCopyWithImpl<$Res, _$ProductDiscountEntityImpl>
    implements _$$ProductDiscountEntityImplCopyWith<$Res> {
  __$$ProductDiscountEntityImplCopyWithImpl(
    _$ProductDiscountEntityImpl _value,
    $Res Function(_$ProductDiscountEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasDiscount = null,
    Object? discountType = freezed,
    Object? discountValue = null,
    Object? discountPercentage = null,
    Object? discountedPrice = null,
    Object? discountSavings = null,
    Object? isActive = null,
    Object? isAvailable = null,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isFlashSale = null,
    Object? maxQuantity = null,
    Object? usedQuantity = null,
    Object? remainingQuantity = null,
  }) {
    return _then(
      _$ProductDiscountEntityImpl(
        hasDiscount: null == hasDiscount
            ? _value.hasDiscount
            : hasDiscount // ignore: cast_nullable_to_non_nullable
                  as bool,
        discountType: freezed == discountType
            ? _value.discountType
            : discountType // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountValue: null == discountValue
            ? _value.discountValue
            : discountValue // ignore: cast_nullable_to_non_nullable
                  as num,
        discountPercentage: null == discountPercentage
            ? _value.discountPercentage
            : discountPercentage // ignore: cast_nullable_to_non_nullable
                  as num,
        discountedPrice: null == discountedPrice
            ? _value.discountedPrice
            : discountedPrice // ignore: cast_nullable_to_non_nullable
                  as num,
        discountSavings: null == discountSavings
            ? _value.discountSavings
            : discountSavings // ignore: cast_nullable_to_non_nullable
                  as num,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        startsAt: freezed == startsAt
            ? _value.startsAt
            : startsAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        endsAt: freezed == endsAt
            ? _value.endsAt
            : endsAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        isFlashSale: null == isFlashSale
            ? _value.isFlashSale
            : isFlashSale // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxQuantity: null == maxQuantity
            ? _value.maxQuantity
            : maxQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        usedQuantity: null == usedQuantity
            ? _value.usedQuantity
            : usedQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        remainingQuantity: null == remainingQuantity
            ? _value.remainingQuantity
            : remainingQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDiscountEntityImpl extends _ProductDiscountEntity {
  const _$ProductDiscountEntityImpl({
    @JsonKey(name: 'has_discount') this.hasDiscount = false,
    @JsonKey(name: 'discount_type') this.discountType,
    @JsonKey(name: 'discount_value') this.discountValue = 0,
    @JsonKey(name: 'discount_percentage') this.discountPercentage = 0,
    @JsonKey(name: 'discounted_price') this.discountedPrice = 0,
    @JsonKey(name: 'discount_savings') this.discountSavings = 0,
    @JsonKey(name: 'is_active') this.isActive = false,
    @JsonKey(name: 'is_available') this.isAvailable = false,
    @JsonKey(name: 'starts_at') this.startsAt,
    @JsonKey(name: 'ends_at') this.endsAt,
    @JsonKey(name: 'is_flash_sale') this.isFlashSale = false,
    @JsonKey(name: 'max_quantity') this.maxQuantity = 0,
    @JsonKey(name: 'used_quantity') this.usedQuantity = 0,
    @JsonKey(name: 'remaining_quantity') this.remainingQuantity = 0,
  }) : super._();

  factory _$ProductDiscountEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDiscountEntityImplFromJson(json);

  @override
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;
  @override
  @JsonKey(name: 'discount_value')
  final num discountValue;
  @override
  @JsonKey(name: 'discount_percentage')
  final num discountPercentage;
  @override
  @JsonKey(name: 'discounted_price')
  final num discountedPrice;
  @override
  @JsonKey(name: 'discount_savings')
  final num discountSavings;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;
  @override
  @JsonKey(name: 'starts_at')
  final String? startsAt;
  @override
  @JsonKey(name: 'ends_at')
  final String? endsAt;
  @override
  @JsonKey(name: 'is_flash_sale')
  final bool isFlashSale;
  @override
  @JsonKey(name: 'max_quantity')
  final int maxQuantity;
  @override
  @JsonKey(name: 'used_quantity')
  final int usedQuantity;
  @override
  @JsonKey(name: 'remaining_quantity')
  final int remainingQuantity;

  @override
  String toString() {
    return 'ProductDiscountEntity(hasDiscount: $hasDiscount, discountType: $discountType, discountValue: $discountValue, discountPercentage: $discountPercentage, discountedPrice: $discountedPrice, discountSavings: $discountSavings, isActive: $isActive, isAvailable: $isAvailable, startsAt: $startsAt, endsAt: $endsAt, isFlashSale: $isFlashSale, maxQuantity: $maxQuantity, usedQuantity: $usedQuantity, remainingQuantity: $remainingQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDiscountEntityImpl &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.discountSavings, discountSavings) ||
                other.discountSavings == discountSavings) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isFlashSale, isFlashSale) ||
                other.isFlashSale == isFlashSale) &&
            (identical(other.maxQuantity, maxQuantity) ||
                other.maxQuantity == maxQuantity) &&
            (identical(other.usedQuantity, usedQuantity) ||
                other.usedQuantity == usedQuantity) &&
            (identical(other.remainingQuantity, remainingQuantity) ||
                other.remainingQuantity == remainingQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    hasDiscount,
    discountType,
    discountValue,
    discountPercentage,
    discountedPrice,
    discountSavings,
    isActive,
    isAvailable,
    startsAt,
    endsAt,
    isFlashSale,
    maxQuantity,
    usedQuantity,
    remainingQuantity,
  );

  /// Create a copy of ProductDiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDiscountEntityImplCopyWith<_$ProductDiscountEntityImpl>
  get copyWith =>
      __$$ProductDiscountEntityImplCopyWithImpl<_$ProductDiscountEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDiscountEntityImplToJson(this);
  }
}

abstract class _ProductDiscountEntity extends ProductDiscountEntity {
  const factory _ProductDiscountEntity({
    @JsonKey(name: 'has_discount') final bool hasDiscount,
    @JsonKey(name: 'discount_type') final String? discountType,
    @JsonKey(name: 'discount_value') final num discountValue,
    @JsonKey(name: 'discount_percentage') final num discountPercentage,
    @JsonKey(name: 'discounted_price') final num discountedPrice,
    @JsonKey(name: 'discount_savings') final num discountSavings,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'is_available') final bool isAvailable,
    @JsonKey(name: 'starts_at') final String? startsAt,
    @JsonKey(name: 'ends_at') final String? endsAt,
    @JsonKey(name: 'is_flash_sale') final bool isFlashSale,
    @JsonKey(name: 'max_quantity') final int maxQuantity,
    @JsonKey(name: 'used_quantity') final int usedQuantity,
    @JsonKey(name: 'remaining_quantity') final int remainingQuantity,
  }) = _$ProductDiscountEntityImpl;
  const _ProductDiscountEntity._() : super._();

  factory _ProductDiscountEntity.fromJson(Map<String, dynamic> json) =
      _$ProductDiscountEntityImpl.fromJson;

  @override
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @override
  @JsonKey(name: 'discount_value')
  num get discountValue;
  @override
  @JsonKey(name: 'discount_percentage')
  num get discountPercentage;
  @override
  @JsonKey(name: 'discounted_price')
  num get discountedPrice;
  @override
  @JsonKey(name: 'discount_savings')
  num get discountSavings;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(name: 'starts_at')
  String? get startsAt;
  @override
  @JsonKey(name: 'ends_at')
  String? get endsAt;
  @override
  @JsonKey(name: 'is_flash_sale')
  bool get isFlashSale;
  @override
  @JsonKey(name: 'max_quantity')
  int get maxQuantity;
  @override
  @JsonKey(name: 'used_quantity')
  int get usedQuantity;
  @override
  @JsonKey(name: 'remaining_quantity')
  int get remainingQuantity;

  /// Create a copy of ProductDiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDiscountEntityImplCopyWith<_$ProductDiscountEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
