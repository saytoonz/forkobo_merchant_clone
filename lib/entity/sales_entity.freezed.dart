// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalesEntity _$SalesEntityFromJson(Map<String, dynamic> json) {
  return _SalesEntity.fromJson(json);
}

/// @nodoc
mixin _$SalesEntity {
  String? get userId => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  num get totalAmount => throw _privateConstructorUsedError;
  int get totalOrders => throw _privateConstructorUsedError;
  num get grossProfit => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SalesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesEntityCopyWith<SalesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesEntityCopyWith<$Res> {
  factory $SalesEntityCopyWith(
    SalesEntity value,
    $Res Function(SalesEntity) then,
  ) = _$SalesEntityCopyWithImpl<$Res, SalesEntity>;
  @useResult
  $Res call({
    String? userId,
    String? storeId,
    num totalAmount,
    int totalOrders,
    num grossProfit,
    @TimestampConverter() Timestamp timestamp,
  });
}

/// @nodoc
class _$SalesEntityCopyWithImpl<$Res, $Val extends SalesEntity>
    implements $SalesEntityCopyWith<$Res> {
  _$SalesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? storeId = freezed,
    Object? totalAmount = null,
    Object? totalOrders = null,
    Object? grossProfit = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalAmount: null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as num,
            totalOrders: null == totalOrders
                ? _value.totalOrders
                : totalOrders // ignore: cast_nullable_to_non_nullable
                      as int,
            grossProfit: null == grossProfit
                ? _value.grossProfit
                : grossProfit // ignore: cast_nullable_to_non_nullable
                      as num,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as Timestamp,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SalesEntityImplCopyWith<$Res>
    implements $SalesEntityCopyWith<$Res> {
  factory _$$SalesEntityImplCopyWith(
    _$SalesEntityImpl value,
    $Res Function(_$SalesEntityImpl) then,
  ) = __$$SalesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? userId,
    String? storeId,
    num totalAmount,
    int totalOrders,
    num grossProfit,
    @TimestampConverter() Timestamp timestamp,
  });
}

/// @nodoc
class __$$SalesEntityImplCopyWithImpl<$Res>
    extends _$SalesEntityCopyWithImpl<$Res, _$SalesEntityImpl>
    implements _$$SalesEntityImplCopyWith<$Res> {
  __$$SalesEntityImplCopyWithImpl(
    _$SalesEntityImpl _value,
    $Res Function(_$SalesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? storeId = freezed,
    Object? totalAmount = null,
    Object? totalOrders = null,
    Object? grossProfit = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$SalesEntityImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalAmount: null == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as num,
        totalOrders: null == totalOrders
            ? _value.totalOrders
            : totalOrders // ignore: cast_nullable_to_non_nullable
                  as int,
        grossProfit: null == grossProfit
            ? _value.grossProfit
            : grossProfit // ignore: cast_nullable_to_non_nullable
                  as num,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as Timestamp,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesEntityImpl implements _SalesEntity {
  const _$SalesEntityImpl({
    this.userId,
    this.storeId,
    this.totalAmount = 0,
    this.totalOrders = 0,
    this.grossProfit = 0,
    @TimestampConverter() required this.timestamp,
  });

  factory _$SalesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesEntityImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? storeId;
  @override
  @JsonKey()
  final num totalAmount;
  @override
  @JsonKey()
  final int totalOrders;
  @override
  @JsonKey()
  final num grossProfit;
  @override
  @TimestampConverter()
  final Timestamp timestamp;

  @override
  String toString() {
    return 'SalesEntity(userId: $userId, storeId: $storeId, totalAmount: $totalAmount, totalOrders: $totalOrders, grossProfit: $grossProfit, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.grossProfit, grossProfit) ||
                other.grossProfit == grossProfit) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    storeId,
    totalAmount,
    totalOrders,
    grossProfit,
    timestamp,
  );

  /// Create a copy of SalesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesEntityImplCopyWith<_$SalesEntityImpl> get copyWith =>
      __$$SalesEntityImplCopyWithImpl<_$SalesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesEntityImplToJson(this);
  }
}

abstract class _SalesEntity implements SalesEntity {
  const factory _SalesEntity({
    final String? userId,
    final String? storeId,
    final num totalAmount,
    final int totalOrders,
    final num grossProfit,
    @TimestampConverter() required final Timestamp timestamp,
  }) = _$SalesEntityImpl;

  factory _SalesEntity.fromJson(Map<String, dynamic> json) =
      _$SalesEntityImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get storeId;
  @override
  num get totalAmount;
  @override
  int get totalOrders;
  @override
  num get grossProfit;
  @override
  @TimestampConverter()
  Timestamp get timestamp;

  /// Create a copy of SalesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesEntityImplCopyWith<_$SalesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
