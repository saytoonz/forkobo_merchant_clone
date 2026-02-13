// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FollowingShopUiState _$FollowingShopUiStateFromJson(Map<String, dynamic> json) {
  return _FollowingShopUiState.fromJson(json);
}

/// @nodoc
mixin _$FollowingShopUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ShopEntity> get shops => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;

  /// Serializes this FollowingShopUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowingShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowingShopUiStateCopyWith<FollowingShopUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingShopUiStateCopyWith<$Res> {
  factory $FollowingShopUiStateCopyWith(
    FollowingShopUiState value,
    $Res Function(FollowingShopUiState) then,
  ) = _$FollowingShopUiStateCopyWithImpl<$Res, FollowingShopUiState>;
  @useResult
  $Res call({bool isLoading, List<ShopEntity> shops, String errorMsg});
}

/// @nodoc
class _$FollowingShopUiStateCopyWithImpl<
  $Res,
  $Val extends FollowingShopUiState
>
    implements $FollowingShopUiStateCopyWith<$Res> {
  _$FollowingShopUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowingShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? shops = null,
    Object? errorMsg = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            shops: null == shops
                ? _value.shops
                : shops // ignore: cast_nullable_to_non_nullable
                      as List<ShopEntity>,
            errorMsg: null == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FollowingShopUiStateImplCopyWith<$Res>
    implements $FollowingShopUiStateCopyWith<$Res> {
  factory _$$FollowingShopUiStateImplCopyWith(
    _$FollowingShopUiStateImpl value,
    $Res Function(_$FollowingShopUiStateImpl) then,
  ) = __$$FollowingShopUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ShopEntity> shops, String errorMsg});
}

/// @nodoc
class __$$FollowingShopUiStateImplCopyWithImpl<$Res>
    extends _$FollowingShopUiStateCopyWithImpl<$Res, _$FollowingShopUiStateImpl>
    implements _$$FollowingShopUiStateImplCopyWith<$Res> {
  __$$FollowingShopUiStateImplCopyWithImpl(
    _$FollowingShopUiStateImpl _value,
    $Res Function(_$FollowingShopUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FollowingShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? shops = null,
    Object? errorMsg = null,
  }) {
    return _then(
      _$FollowingShopUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        shops: null == shops
            ? _value._shops
            : shops // ignore: cast_nullable_to_non_nullable
                  as List<ShopEntity>,
        errorMsg: null == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowingShopUiStateImpl extends _FollowingShopUiState {
  const _$FollowingShopUiStateImpl({
    this.isLoading = false,
    final List<ShopEntity> shops = const [],
    this.errorMsg = '',
  }) : _shops = shops,
       super._();

  factory _$FollowingShopUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowingShopUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ShopEntity> _shops;
  @override
  @JsonKey()
  List<ShopEntity> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  @JsonKey()
  final String errorMsg;

  @override
  String toString() {
    return 'FollowingShopUiState(isLoading: $isLoading, shops: $shops, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowingShopUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_shops),
    errorMsg,
  );

  /// Create a copy of FollowingShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowingShopUiStateImplCopyWith<_$FollowingShopUiStateImpl>
  get copyWith =>
      __$$FollowingShopUiStateImplCopyWithImpl<_$FollowingShopUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowingShopUiStateImplToJson(this);
  }
}

abstract class _FollowingShopUiState extends FollowingShopUiState {
  const factory _FollowingShopUiState({
    final bool isLoading,
    final List<ShopEntity> shops,
    final String errorMsg,
  }) = _$FollowingShopUiStateImpl;
  const _FollowingShopUiState._() : super._();

  factory _FollowingShopUiState.fromJson(Map<String, dynamic> json) =
      _$FollowingShopUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ShopEntity> get shops;
  @override
  String get errorMsg;

  /// Create a copy of FollowingShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowingShopUiStateImplCopyWith<_$FollowingShopUiStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RecentlyViewedUiState _$RecentlyViewedUiStateFromJson(
  Map<String, dynamic> json,
) {
  return _RecentlyViewedUiState.fromJson(json);
}

/// @nodoc
mixin _$RecentlyViewedUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<dynamic> get productAndShops => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;

  /// Serializes this RecentlyViewedUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentlyViewedUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentlyViewedUiStateCopyWith<RecentlyViewedUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyViewedUiStateCopyWith<$Res> {
  factory $RecentlyViewedUiStateCopyWith(
    RecentlyViewedUiState value,
    $Res Function(RecentlyViewedUiState) then,
  ) = _$RecentlyViewedUiStateCopyWithImpl<$Res, RecentlyViewedUiState>;
  @useResult
  $Res call({bool isLoading, List<dynamic> productAndShops, String errorMsg});
}

/// @nodoc
class _$RecentlyViewedUiStateCopyWithImpl<
  $Res,
  $Val extends RecentlyViewedUiState
>
    implements $RecentlyViewedUiStateCopyWith<$Res> {
  _$RecentlyViewedUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentlyViewedUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productAndShops = null,
    Object? errorMsg = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            productAndShops: null == productAndShops
                ? _value.productAndShops
                : productAndShops // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            errorMsg: null == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecentlyViewedUiStateImplCopyWith<$Res>
    implements $RecentlyViewedUiStateCopyWith<$Res> {
  factory _$$RecentlyViewedUiStateImplCopyWith(
    _$RecentlyViewedUiStateImpl value,
    $Res Function(_$RecentlyViewedUiStateImpl) then,
  ) = __$$RecentlyViewedUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<dynamic> productAndShops, String errorMsg});
}

/// @nodoc
class __$$RecentlyViewedUiStateImplCopyWithImpl<$Res>
    extends
        _$RecentlyViewedUiStateCopyWithImpl<$Res, _$RecentlyViewedUiStateImpl>
    implements _$$RecentlyViewedUiStateImplCopyWith<$Res> {
  __$$RecentlyViewedUiStateImplCopyWithImpl(
    _$RecentlyViewedUiStateImpl _value,
    $Res Function(_$RecentlyViewedUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecentlyViewedUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productAndShops = null,
    Object? errorMsg = null,
  }) {
    return _then(
      _$RecentlyViewedUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        productAndShops: null == productAndShops
            ? _value._productAndShops
            : productAndShops // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        errorMsg: null == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentlyViewedUiStateImpl extends _RecentlyViewedUiState {
  const _$RecentlyViewedUiStateImpl({
    this.isLoading = false,
    final List<dynamic> productAndShops = const [],
    this.errorMsg = '',
  }) : _productAndShops = productAndShops,
       super._();

  factory _$RecentlyViewedUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentlyViewedUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<dynamic> _productAndShops;
  @override
  @JsonKey()
  List<dynamic> get productAndShops {
    if (_productAndShops is EqualUnmodifiableListView) return _productAndShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productAndShops);
  }

  @override
  @JsonKey()
  final String errorMsg;

  @override
  String toString() {
    return 'RecentlyViewedUiState(isLoading: $isLoading, productAndShops: $productAndShops, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentlyViewedUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(
              other._productAndShops,
              _productAndShops,
            ) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_productAndShops),
    errorMsg,
  );

  /// Create a copy of RecentlyViewedUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentlyViewedUiStateImplCopyWith<_$RecentlyViewedUiStateImpl>
  get copyWith =>
      __$$RecentlyViewedUiStateImplCopyWithImpl<_$RecentlyViewedUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentlyViewedUiStateImplToJson(this);
  }
}

abstract class _RecentlyViewedUiState extends RecentlyViewedUiState {
  const factory _RecentlyViewedUiState({
    final bool isLoading,
    final List<dynamic> productAndShops,
    final String errorMsg,
  }) = _$RecentlyViewedUiStateImpl;
  const _RecentlyViewedUiState._() : super._();

  factory _RecentlyViewedUiState.fromJson(Map<String, dynamic> json) =
      _$RecentlyViewedUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<dynamic> get productAndShops;
  @override
  String get errorMsg;

  /// Create a copy of RecentlyViewedUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentlyViewedUiStateImplCopyWith<_$RecentlyViewedUiStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ShopUiState _$ShopUiStateFromJson(Map<String, dynamic> json) {
  return _ShopUiState.fromJson(json);
}

/// @nodoc
mixin _$ShopUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ShopEntity> get shops => throw _privateConstructorUsedError;
  List<ShopEntity> get followings => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  /// Serializes this ShopUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopUiStateCopyWith<ShopUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopUiStateCopyWith<$Res> {
  factory $ShopUiStateCopyWith(
    ShopUiState value,
    $Res Function(ShopUiState) then,
  ) = _$ShopUiStateCopyWithImpl<$Res, ShopUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<ShopEntity> shops,
    List<ShopEntity> followings,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class _$ShopUiStateCopyWithImpl<$Res, $Val extends ShopUiState>
    implements $ShopUiStateCopyWith<$Res> {
  _$ShopUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? shops = null,
    Object? followings = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            shops: null == shops
                ? _value.shops
                : shops // ignore: cast_nullable_to_non_nullable
                      as List<ShopEntity>,
            followings: null == followings
                ? _value.followings
                : followings // ignore: cast_nullable_to_non_nullable
                      as List<ShopEntity>,
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
abstract class _$$ShopUiStateImplCopyWith<$Res>
    implements $ShopUiStateCopyWith<$Res> {
  factory _$$ShopUiStateImplCopyWith(
    _$ShopUiStateImpl value,
    $Res Function(_$ShopUiStateImpl) then,
  ) = __$$ShopUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<ShopEntity> shops,
    List<ShopEntity> followings,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class __$$ShopUiStateImplCopyWithImpl<$Res>
    extends _$ShopUiStateCopyWithImpl<$Res, _$ShopUiStateImpl>
    implements _$$ShopUiStateImplCopyWith<$Res> {
  __$$ShopUiStateImplCopyWithImpl(
    _$ShopUiStateImpl _value,
    $Res Function(_$ShopUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? shops = null,
    Object? followings = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _$ShopUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        shops: null == shops
            ? _value._shops
            : shops // ignore: cast_nullable_to_non_nullable
                  as List<ShopEntity>,
        followings: null == followings
            ? _value._followings
            : followings // ignore: cast_nullable_to_non_nullable
                  as List<ShopEntity>,
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
class _$ShopUiStateImpl extends _ShopUiState {
  const _$ShopUiStateImpl({
    this.isLoading = false,
    final List<ShopEntity> shops = const [],
    final List<ShopEntity> followings = const [],
    this.errorMsg = '',
    this.nextUrl,
  }) : _shops = shops,
       _followings = followings,
       super._();

  factory _$ShopUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ShopEntity> _shops;
  @override
  @JsonKey()
  List<ShopEntity> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  final List<ShopEntity> _followings;
  @override
  @JsonKey()
  List<ShopEntity> get followings {
    if (_followings is EqualUnmodifiableListView) return _followings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followings);
  }

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'ShopUiState(isLoading: $isLoading, shops: $shops, followings: $followings, errorMsg: $errorMsg, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality().equals(
              other._followings,
              _followings,
            ) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_shops),
    const DeepCollectionEquality().hash(_followings),
    errorMsg,
    nextUrl,
  );

  /// Create a copy of ShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopUiStateImplCopyWith<_$ShopUiStateImpl> get copyWith =>
      __$$ShopUiStateImplCopyWithImpl<_$ShopUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopUiStateImplToJson(this);
  }
}

abstract class _ShopUiState extends ShopUiState {
  const factory _ShopUiState({
    final bool isLoading,
    final List<ShopEntity> shops,
    final List<ShopEntity> followings,
    final String errorMsg,
    final String? nextUrl,
  }) = _$ShopUiStateImpl;
  const _ShopUiState._() : super._();

  factory _ShopUiState.fromJson(Map<String, dynamic> json) =
      _$ShopUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ShopEntity> get shops;
  @override
  List<ShopEntity> get followings;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;

  /// Create a copy of ShopUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopUiStateImplCopyWith<_$ShopUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedProductUiState _$SavedProductUiStateFromJson(Map<String, dynamic> json) {
  return _SavedProductUiState.fromJson(json);
}

/// @nodoc
mixin _$SavedProductUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;

  /// Serializes this SavedProductUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedProductUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedProductUiStateCopyWith<SavedProductUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedProductUiStateCopyWith<$Res> {
  factory $SavedProductUiStateCopyWith(
    SavedProductUiState value,
    $Res Function(SavedProductUiState) then,
  ) = _$SavedProductUiStateCopyWithImpl<$Res, SavedProductUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<ProductEntity> products,
    String errorMsg,
    int? nextPage,
  });
}

/// @nodoc
class _$SavedProductUiStateCopyWithImpl<$Res, $Val extends SavedProductUiState>
    implements $SavedProductUiStateCopyWith<$Res> {
  _$SavedProductUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedProductUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? errorMsg = null,
    Object? nextPage = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<ProductEntity>,
            errorMsg: null == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String,
            nextPage: freezed == nextPage
                ? _value.nextPage
                : nextPage // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SavedProductUiStateImplCopyWith<$Res>
    implements $SavedProductUiStateCopyWith<$Res> {
  factory _$$SavedProductUiStateImplCopyWith(
    _$SavedProductUiStateImpl value,
    $Res Function(_$SavedProductUiStateImpl) then,
  ) = __$$SavedProductUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<ProductEntity> products,
    String errorMsg,
    int? nextPage,
  });
}

/// @nodoc
class __$$SavedProductUiStateImplCopyWithImpl<$Res>
    extends _$SavedProductUiStateCopyWithImpl<$Res, _$SavedProductUiStateImpl>
    implements _$$SavedProductUiStateImplCopyWith<$Res> {
  __$$SavedProductUiStateImplCopyWithImpl(
    _$SavedProductUiStateImpl _value,
    $Res Function(_$SavedProductUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SavedProductUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? errorMsg = null,
    Object? nextPage = freezed,
  }) {
    return _then(
      _$SavedProductUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<ProductEntity>,
        errorMsg: null == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String,
        nextPage: freezed == nextPage
            ? _value.nextPage
            : nextPage // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedProductUiStateImpl extends _SavedProductUiState {
  const _$SavedProductUiStateImpl({
    this.isLoading = false,
    final List<ProductEntity> products = const [],
    this.errorMsg = '',
    this.nextPage,
  }) : _products = products,
       super._();

  factory _$SavedProductUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedProductUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final int? nextPage;

  @override
  String toString() {
    return 'SavedProductUiState(isLoading: $isLoading, products: $products, errorMsg: $errorMsg, nextPage: $nextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedProductUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_products),
    errorMsg,
    nextPage,
  );

  /// Create a copy of SavedProductUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedProductUiStateImplCopyWith<_$SavedProductUiStateImpl> get copyWith =>
      __$$SavedProductUiStateImplCopyWithImpl<_$SavedProductUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedProductUiStateImplToJson(this);
  }
}

abstract class _SavedProductUiState extends SavedProductUiState {
  const factory _SavedProductUiState({
    final bool isLoading,
    final List<ProductEntity> products,
    final String errorMsg,
    final int? nextPage,
  }) = _$SavedProductUiStateImpl;
  const _SavedProductUiState._() : super._();

  factory _SavedProductUiState.fromJson(Map<String, dynamic> json) =
      _$SavedProductUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ProductEntity> get products;
  @override
  String get errorMsg;
  @override
  int? get nextPage;

  /// Create a copy of SavedProductUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedProductUiStateImplCopyWith<_$SavedProductUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopProductsUiState _$ShopProductsUiStateFromJson(Map<String, dynamic> json) {
  return _ShopProductsUiState.fromJson(json);
}

/// @nodoc
mixin _$ShopProductsUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;

  /// Serializes this ShopProductsUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopProductsUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopProductsUiStateCopyWith<ShopProductsUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopProductsUiStateCopyWith<$Res> {
  factory $ShopProductsUiStateCopyWith(
    ShopProductsUiState value,
    $Res Function(ShopProductsUiState) then,
  ) = _$ShopProductsUiStateCopyWithImpl<$Res, ShopProductsUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<ProductEntity> products,
    String errorMsg,
    String? nextUrl,
    int currentPage,
    bool hasMoreData,
  });
}

/// @nodoc
class _$ShopProductsUiStateCopyWithImpl<$Res, $Val extends ShopProductsUiState>
    implements $ShopProductsUiStateCopyWith<$Res> {
  _$ShopProductsUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopProductsUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
    Object? currentPage = null,
    Object? hasMoreData = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<ProductEntity>,
            errorMsg: null == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String,
            nextUrl: freezed == nextUrl
                ? _value.nextUrl
                : nextUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            hasMoreData: null == hasMoreData
                ? _value.hasMoreData
                : hasMoreData // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShopProductsUiStateImplCopyWith<$Res>
    implements $ShopProductsUiStateCopyWith<$Res> {
  factory _$$ShopProductsUiStateImplCopyWith(
    _$ShopProductsUiStateImpl value,
    $Res Function(_$ShopProductsUiStateImpl) then,
  ) = __$$ShopProductsUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<ProductEntity> products,
    String errorMsg,
    String? nextUrl,
    int currentPage,
    bool hasMoreData,
  });
}

/// @nodoc
class __$$ShopProductsUiStateImplCopyWithImpl<$Res>
    extends _$ShopProductsUiStateCopyWithImpl<$Res, _$ShopProductsUiStateImpl>
    implements _$$ShopProductsUiStateImplCopyWith<$Res> {
  __$$ShopProductsUiStateImplCopyWithImpl(
    _$ShopProductsUiStateImpl _value,
    $Res Function(_$ShopProductsUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopProductsUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
    Object? currentPage = null,
    Object? hasMoreData = null,
  }) {
    return _then(
      _$ShopProductsUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<ProductEntity>,
        errorMsg: null == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String,
        nextUrl: freezed == nextUrl
            ? _value.nextUrl
            : nextUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        hasMoreData: null == hasMoreData
            ? _value.hasMoreData
            : hasMoreData // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopProductsUiStateImpl extends _ShopProductsUiState {
  const _$ShopProductsUiStateImpl({
    this.isLoading = false,
    final List<ProductEntity> products = const [],
    this.errorMsg = '',
    this.nextUrl,
    this.currentPage = 1,
    this.hasMoreData = false,
  }) : _products = products,
       super._();

  factory _$ShopProductsUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopProductsUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final String? nextUrl;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool hasMoreData;

  @override
  String toString() {
    return 'ShopProductsUiState(isLoading: $isLoading, products: $products, errorMsg: $errorMsg, nextUrl: $nextUrl, currentPage: $currentPage, hasMoreData: $hasMoreData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopProductsUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_products),
    errorMsg,
    nextUrl,
    currentPage,
    hasMoreData,
  );

  /// Create a copy of ShopProductsUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopProductsUiStateImplCopyWith<_$ShopProductsUiStateImpl> get copyWith =>
      __$$ShopProductsUiStateImplCopyWithImpl<_$ShopProductsUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopProductsUiStateImplToJson(this);
  }
}

abstract class _ShopProductsUiState extends ShopProductsUiState {
  const factory _ShopProductsUiState({
    final bool isLoading,
    final List<ProductEntity> products,
    final String errorMsg,
    final String? nextUrl,
    final int currentPage,
    final bool hasMoreData,
  }) = _$ShopProductsUiStateImpl;
  const _ShopProductsUiState._() : super._();

  factory _ShopProductsUiState.fromJson(Map<String, dynamic> json) =
      _$ShopProductsUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ProductEntity> get products;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;
  @override
  int get currentPage;
  @override
  bool get hasMoreData;

  /// Create a copy of ShopProductsUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopProductsUiStateImplCopyWith<_$ShopProductsUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
