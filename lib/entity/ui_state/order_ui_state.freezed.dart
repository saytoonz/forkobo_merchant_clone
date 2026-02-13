// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderUiState _$OrderUiStateFromJson(Map<String, dynamic> json) {
  return _OrderUiState.fromJson(json);
}

/// @nodoc
mixin _$OrderUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<OrderEntity> get orders => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  /// Serializes this OrderUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderUiStateCopyWith<OrderUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderUiStateCopyWith<$Res> {
  factory $OrderUiStateCopyWith(
    OrderUiState value,
    $Res Function(OrderUiState) then,
  ) = _$OrderUiStateCopyWithImpl<$Res, OrderUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<OrderEntity> orders,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class _$OrderUiStateCopyWithImpl<$Res, $Val extends OrderUiState>
    implements $OrderUiStateCopyWith<$Res> {
  _$OrderUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? orders = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            orders: null == orders
                ? _value.orders
                : orders // ignore: cast_nullable_to_non_nullable
                      as List<OrderEntity>,
            errorMsg: null == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String,
            nextUrl: freezed == nextUrl
                ? _value.nextUrl
                : nextUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderUiStateImplCopyWith<$Res>
    implements $OrderUiStateCopyWith<$Res> {
  factory _$$OrderUiStateImplCopyWith(
    _$OrderUiStateImpl value,
    $Res Function(_$OrderUiStateImpl) then,
  ) = __$$OrderUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<OrderEntity> orders,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class __$$OrderUiStateImplCopyWithImpl<$Res>
    extends _$OrderUiStateCopyWithImpl<$Res, _$OrderUiStateImpl>
    implements _$$OrderUiStateImplCopyWith<$Res> {
  __$$OrderUiStateImplCopyWithImpl(
    _$OrderUiStateImpl _value,
    $Res Function(_$OrderUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? orders = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _$OrderUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        orders: null == orders
            ? _value._orders
            : orders // ignore: cast_nullable_to_non_nullable
                  as List<OrderEntity>,
        errorMsg: null == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String,
        nextUrl: freezed == nextUrl
            ? _value.nextUrl
            : nextUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderUiStateImpl extends _OrderUiState {
  const _$OrderUiStateImpl({
    this.isLoading = false,
    final List<OrderEntity> orders = const [],
    this.errorMsg = '',
    this.nextUrl,
  }) : _orders = orders,
       super._();

  factory _$OrderUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<OrderEntity> _orders;
  @override
  @JsonKey()
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'OrderUiState(isLoading: $isLoading, orders: $orders, errorMsg: $errorMsg, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_orders),
    errorMsg,
    nextUrl,
  );

  /// Create a copy of OrderUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderUiStateImplCopyWith<_$OrderUiStateImpl> get copyWith =>
      __$$OrderUiStateImplCopyWithImpl<_$OrderUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderUiStateImplToJson(this);
  }
}

abstract class _OrderUiState extends OrderUiState {
  const factory _OrderUiState({
    final bool isLoading,
    final List<OrderEntity> orders,
    final String errorMsg,
    final String? nextUrl,
  }) = _$OrderUiStateImpl;
  const _OrderUiState._() : super._();

  factory _OrderUiState.fromJson(Map<String, dynamic> json) =
      _$OrderUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<OrderEntity> get orders;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;

  /// Create a copy of OrderUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderUiStateImplCopyWith<_$OrderUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
