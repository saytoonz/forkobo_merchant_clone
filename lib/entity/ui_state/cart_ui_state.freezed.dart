// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartUiState _$CartUiStateFromJson(Map<String, dynamic> json) {
  return _CartUiState.fromJson(json);
}

/// @nodoc
mixin _$CartUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CartEntity> get carts => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  /// Serializes this CartUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartUiStateCopyWith<CartUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartUiStateCopyWith<$Res> {
  factory $CartUiStateCopyWith(
    CartUiState value,
    $Res Function(CartUiState) then,
  ) = _$CartUiStateCopyWithImpl<$Res, CartUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<CartEntity> carts,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class _$CartUiStateCopyWithImpl<$Res, $Val extends CartUiState>
    implements $CartUiStateCopyWith<$Res> {
  _$CartUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? carts = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            carts: null == carts
                ? _value.carts
                : carts // ignore: cast_nullable_to_non_nullable
                      as List<CartEntity>,
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
abstract class _$$CartUiStateImplCopyWith<$Res>
    implements $CartUiStateCopyWith<$Res> {
  factory _$$CartUiStateImplCopyWith(
    _$CartUiStateImpl value,
    $Res Function(_$CartUiStateImpl) then,
  ) = __$$CartUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<CartEntity> carts,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class __$$CartUiStateImplCopyWithImpl<$Res>
    extends _$CartUiStateCopyWithImpl<$Res, _$CartUiStateImpl>
    implements _$$CartUiStateImplCopyWith<$Res> {
  __$$CartUiStateImplCopyWithImpl(
    _$CartUiStateImpl _value,
    $Res Function(_$CartUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? carts = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _$CartUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        carts: null == carts
            ? _value._carts
            : carts // ignore: cast_nullable_to_non_nullable
                  as List<CartEntity>,
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
class _$CartUiStateImpl extends _CartUiState {
  const _$CartUiStateImpl({
    this.isLoading = false,
    final List<CartEntity> carts = const [],
    this.errorMsg = '',
    this.nextUrl,
  }) : _carts = carts,
       super._();

  factory _$CartUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<CartEntity> _carts;
  @override
  @JsonKey()
  List<CartEntity> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'CartUiState(isLoading: $isLoading, carts: $carts, errorMsg: $errorMsg, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_carts),
    errorMsg,
    nextUrl,
  );

  /// Create a copy of CartUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUiStateImplCopyWith<_$CartUiStateImpl> get copyWith =>
      __$$CartUiStateImplCopyWithImpl<_$CartUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartUiStateImplToJson(this);
  }
}

abstract class _CartUiState extends CartUiState {
  const factory _CartUiState({
    final bool isLoading,
    final List<CartEntity> carts,
    final String errorMsg,
    final String? nextUrl,
  }) = _$CartUiStateImpl;
  const _CartUiState._() : super._();

  factory _CartUiState.fromJson(Map<String, dynamic> json) =
      _$CartUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<CartEntity> get carts;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;

  /// Create a copy of CartUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartUiStateImplCopyWith<_$CartUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
