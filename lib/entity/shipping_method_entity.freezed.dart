// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_method_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShippingMethodEntity _$ShippingMethodEntityFromJson(Map<String, dynamic> json) {
  return _ShippingMethodEntity.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_international')
  bool get isInternational => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethodEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodEntityCopyWith<ShippingMethodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodEntityCopyWith<$Res> {
  factory $ShippingMethodEntityCopyWith(
    ShippingMethodEntity value,
    $Res Function(ShippingMethodEntity) then,
  ) = _$ShippingMethodEntityCopyWithImpl<$Res, ShippingMethodEntity>;
  @useResult
  $Res call({
    int id,
    String? name,
    String? description,
    String? logo,
    String price,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'is_international') bool isInternational,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class _$ShippingMethodEntityCopyWithImpl<
  $Res,
  $Val extends ShippingMethodEntity
>
    implements $ShippingMethodEntityCopyWith<$Res> {
  _$ShippingMethodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
    Object? price = null,
    Object? deliveryTime = freezed,
    Object? isInternational = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            logo: freezed == logo
                ? _value.logo
                : logo // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryTime: freezed == deliveryTime
                ? _value.deliveryTime
                : deliveryTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            isInternational: null == isInternational
                ? _value.isInternational
                : isInternational // ignore: cast_nullable_to_non_nullable
                      as bool,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShippingMethodEntityImplCopyWith<$Res>
    implements $ShippingMethodEntityCopyWith<$Res> {
  factory _$$ShippingMethodEntityImplCopyWith(
    _$ShippingMethodEntityImpl value,
    $Res Function(_$ShippingMethodEntityImpl) then,
  ) = __$$ShippingMethodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? name,
    String? description,
    String? logo,
    String price,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'is_international') bool isInternational,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class __$$ShippingMethodEntityImplCopyWithImpl<$Res>
    extends _$ShippingMethodEntityCopyWithImpl<$Res, _$ShippingMethodEntityImpl>
    implements _$$ShippingMethodEntityImplCopyWith<$Res> {
  __$$ShippingMethodEntityImplCopyWithImpl(
    _$ShippingMethodEntityImpl _value,
    $Res Function(_$ShippingMethodEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShippingMethodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
    Object? price = null,
    Object? deliveryTime = freezed,
    Object? isInternational = null,
    Object? isActive = null,
  }) {
    return _then(
      _$ShippingMethodEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        logo: freezed == logo
            ? _value.logo
            : logo // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryTime: freezed == deliveryTime
            ? _value.deliveryTime
            : deliveryTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        isInternational: null == isInternational
            ? _value.isInternational
            : isInternational // ignore: cast_nullable_to_non_nullable
                  as bool,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodEntityImpl extends _ShippingMethodEntity {
  const _$ShippingMethodEntityImpl({
    required this.id,
    this.name,
    this.description,
    this.logo,
    this.price = '0',
    @JsonKey(name: 'delivery_time') this.deliveryTime,
    @JsonKey(name: 'is_international') this.isInternational = false,
    @JsonKey(name: 'is_active') this.isActive = true,
  }) : super._();

  factory _$ShippingMethodEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? logo;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;
  @override
  @JsonKey(name: 'is_international')
  final bool isInternational;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  @override
  String toString() {
    return 'ShippingMethodEntity(id: $id, name: $name, description: $description, logo: $logo, price: $price, deliveryTime: $deliveryTime, isInternational: $isInternational, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.isInternational, isInternational) ||
                other.isInternational == isInternational) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    logo,
    price,
    deliveryTime,
    isInternational,
    isActive,
  );

  /// Create a copy of ShippingMethodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodEntityImplCopyWith<_$ShippingMethodEntityImpl>
  get copyWith =>
      __$$ShippingMethodEntityImplCopyWithImpl<_$ShippingMethodEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodEntityImplToJson(this);
  }
}

abstract class _ShippingMethodEntity extends ShippingMethodEntity {
  const factory _ShippingMethodEntity({
    required final int id,
    final String? name,
    final String? description,
    final String? logo,
    final String price,
    @JsonKey(name: 'delivery_time') final String? deliveryTime,
    @JsonKey(name: 'is_international') final bool isInternational,
    @JsonKey(name: 'is_active') final bool isActive,
  }) = _$ShippingMethodEntityImpl;
  const _ShippingMethodEntity._() : super._();

  factory _ShippingMethodEntity.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodEntityImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get logo;
  @override
  String get price;
  @override
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime;
  @override
  @JsonKey(name: 'is_international')
  bool get isInternational;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Create a copy of ShippingMethodEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodEntityImplCopyWith<_$ShippingMethodEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
