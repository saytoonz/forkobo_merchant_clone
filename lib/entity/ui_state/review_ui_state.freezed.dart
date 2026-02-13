// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewUiState _$ReviewUiStateFromJson(Map<String, dynamic> json) {
  return _ReviewUiState.fromJson(json);
}

/// @nodoc
mixin _$ReviewUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ReviewEntity> get reviews => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;
  ProductRatingStats? get ratingStats => throw _privateConstructorUsedError;

  /// Serializes this ReviewUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewUiStateCopyWith<ReviewUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewUiStateCopyWith<$Res> {
  factory $ReviewUiStateCopyWith(
    ReviewUiState value,
    $Res Function(ReviewUiState) then,
  ) = _$ReviewUiStateCopyWithImpl<$Res, ReviewUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<ReviewEntity> reviews,
    String errorMsg,
    String? nextUrl,
    int currentPage,
    bool hasMoreData,
    ProductRatingStats? ratingStats,
  });

  $ProductRatingStatsCopyWith<$Res>? get ratingStats;
}

/// @nodoc
class _$ReviewUiStateCopyWithImpl<$Res, $Val extends ReviewUiState>
    implements $ReviewUiStateCopyWith<$Res> {
  _$ReviewUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviews = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
    Object? currentPage = null,
    Object? hasMoreData = null,
    Object? ratingStats = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            reviews: null == reviews
                ? _value.reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewEntity>,
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
            ratingStats: freezed == ratingStats
                ? _value.ratingStats
                : ratingStats // ignore: cast_nullable_to_non_nullable
                      as ProductRatingStats?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductRatingStatsCopyWith<$Res>? get ratingStats {
    if (_value.ratingStats == null) {
      return null;
    }

    return $ProductRatingStatsCopyWith<$Res>(_value.ratingStats!, (value) {
      return _then(_value.copyWith(ratingStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewUiStateImplCopyWith<$Res>
    implements $ReviewUiStateCopyWith<$Res> {
  factory _$$ReviewUiStateImplCopyWith(
    _$ReviewUiStateImpl value,
    $Res Function(_$ReviewUiStateImpl) then,
  ) = __$$ReviewUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<ReviewEntity> reviews,
    String errorMsg,
    String? nextUrl,
    int currentPage,
    bool hasMoreData,
    ProductRatingStats? ratingStats,
  });

  @override
  $ProductRatingStatsCopyWith<$Res>? get ratingStats;
}

/// @nodoc
class __$$ReviewUiStateImplCopyWithImpl<$Res>
    extends _$ReviewUiStateCopyWithImpl<$Res, _$ReviewUiStateImpl>
    implements _$$ReviewUiStateImplCopyWith<$Res> {
  __$$ReviewUiStateImplCopyWithImpl(
    _$ReviewUiStateImpl _value,
    $Res Function(_$ReviewUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviews = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
    Object? currentPage = null,
    Object? hasMoreData = null,
    Object? ratingStats = freezed,
  }) {
    return _then(
      _$ReviewUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewEntity>,
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
        ratingStats: freezed == ratingStats
            ? _value.ratingStats
            : ratingStats // ignore: cast_nullable_to_non_nullable
                  as ProductRatingStats?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewUiStateImpl extends _ReviewUiState {
  const _$ReviewUiStateImpl({
    this.isLoading = false,
    final List<ReviewEntity> reviews = const [],
    this.errorMsg = '',
    this.nextUrl,
    this.currentPage = 1,
    this.hasMoreData = false,
    this.ratingStats,
  }) : _reviews = reviews,
       super._();

  factory _$ReviewUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ReviewEntity> _reviews;
  @override
  @JsonKey()
  List<ReviewEntity> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
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
  final ProductRatingStats? ratingStats;

  @override
  String toString() {
    return 'ReviewUiState(isLoading: $isLoading, reviews: $reviews, errorMsg: $errorMsg, nextUrl: $nextUrl, currentPage: $currentPage, hasMoreData: $hasMoreData, ratingStats: $ratingStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData) &&
            (identical(other.ratingStats, ratingStats) ||
                other.ratingStats == ratingStats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_reviews),
    errorMsg,
    nextUrl,
    currentPage,
    hasMoreData,
    ratingStats,
  );

  /// Create a copy of ReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewUiStateImplCopyWith<_$ReviewUiStateImpl> get copyWith =>
      __$$ReviewUiStateImplCopyWithImpl<_$ReviewUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewUiStateImplToJson(this);
  }
}

abstract class _ReviewUiState extends ReviewUiState {
  const factory _ReviewUiState({
    final bool isLoading,
    final List<ReviewEntity> reviews,
    final String errorMsg,
    final String? nextUrl,
    final int currentPage,
    final bool hasMoreData,
    final ProductRatingStats? ratingStats,
  }) = _$ReviewUiStateImpl;
  const _ReviewUiState._() : super._();

  factory _ReviewUiState.fromJson(Map<String, dynamic> json) =
      _$ReviewUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ReviewEntity> get reviews;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;
  @override
  int get currentPage;
  @override
  bool get hasMoreData;
  @override
  ProductRatingStats? get ratingStats;

  /// Create a copy of ReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewUiStateImplCopyWith<_$ReviewUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserReviewUiState _$UserReviewUiStateFromJson(Map<String, dynamic> json) {
  return _UserReviewUiState.fromJson(json);
}

/// @nodoc
mixin _$UserReviewUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ReviewEntity> get reviews => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;

  /// Serializes this UserReviewUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserReviewUiStateCopyWith<UserReviewUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReviewUiStateCopyWith<$Res> {
  factory $UserReviewUiStateCopyWith(
    UserReviewUiState value,
    $Res Function(UserReviewUiState) then,
  ) = _$UserReviewUiStateCopyWithImpl<$Res, UserReviewUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<ReviewEntity> reviews,
    String errorMsg,
    String? nextUrl,
    int currentPage,
    bool hasMoreData,
  });
}

/// @nodoc
class _$UserReviewUiStateCopyWithImpl<$Res, $Val extends UserReviewUiState>
    implements $UserReviewUiStateCopyWith<$Res> {
  _$UserReviewUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviews = null,
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
            reviews: null == reviews
                ? _value.reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewEntity>,
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
abstract class _$$UserReviewUiStateImplCopyWith<$Res>
    implements $UserReviewUiStateCopyWith<$Res> {
  factory _$$UserReviewUiStateImplCopyWith(
    _$UserReviewUiStateImpl value,
    $Res Function(_$UserReviewUiStateImpl) then,
  ) = __$$UserReviewUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<ReviewEntity> reviews,
    String errorMsg,
    String? nextUrl,
    int currentPage,
    bool hasMoreData,
  });
}

/// @nodoc
class __$$UserReviewUiStateImplCopyWithImpl<$Res>
    extends _$UserReviewUiStateCopyWithImpl<$Res, _$UserReviewUiStateImpl>
    implements _$$UserReviewUiStateImplCopyWith<$Res> {
  __$$UserReviewUiStateImplCopyWithImpl(
    _$UserReviewUiStateImpl _value,
    $Res Function(_$UserReviewUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviews = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
    Object? currentPage = null,
    Object? hasMoreData = null,
  }) {
    return _then(
      _$UserReviewUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewEntity>,
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
class _$UserReviewUiStateImpl extends _UserReviewUiState {
  const _$UserReviewUiStateImpl({
    this.isLoading = false,
    final List<ReviewEntity> reviews = const [],
    this.errorMsg = '',
    this.nextUrl,
    this.currentPage = 1,
    this.hasMoreData = false,
  }) : _reviews = reviews,
       super._();

  factory _$UserReviewUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserReviewUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ReviewEntity> _reviews;
  @override
  @JsonKey()
  List<ReviewEntity> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
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
    return 'UserReviewUiState(isLoading: $isLoading, reviews: $reviews, errorMsg: $errorMsg, nextUrl: $nextUrl, currentPage: $currentPage, hasMoreData: $hasMoreData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReviewUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
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
    const DeepCollectionEquality().hash(_reviews),
    errorMsg,
    nextUrl,
    currentPage,
    hasMoreData,
  );

  /// Create a copy of UserReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReviewUiStateImplCopyWith<_$UserReviewUiStateImpl> get copyWith =>
      __$$UserReviewUiStateImplCopyWithImpl<_$UserReviewUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserReviewUiStateImplToJson(this);
  }
}

abstract class _UserReviewUiState extends UserReviewUiState {
  const factory _UserReviewUiState({
    final bool isLoading,
    final List<ReviewEntity> reviews,
    final String errorMsg,
    final String? nextUrl,
    final int currentPage,
    final bool hasMoreData,
  }) = _$UserReviewUiStateImpl;
  const _UserReviewUiState._() : super._();

  factory _UserReviewUiState.fromJson(Map<String, dynamic> json) =
      _$UserReviewUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ReviewEntity> get reviews;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;
  @override
  int get currentPage;
  @override
  bool get hasMoreData;

  /// Create a copy of UserReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserReviewUiStateImplCopyWith<_$UserReviewUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateReviewUiState _$CreateReviewUiStateFromJson(Map<String, dynamic> json) {
  return _CreateReviewUiState.fromJson(json);
}

/// @nodoc
mixin _$CreateReviewUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Serializes this CreateReviewUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReviewUiStateCopyWith<CreateReviewUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewUiStateCopyWith<$Res> {
  factory $CreateReviewUiStateCopyWith(
    CreateReviewUiState value,
    $Res Function(CreateReviewUiState) then,
  ) = _$CreateReviewUiStateCopyWithImpl<$Res, CreateReviewUiState>;
  @useResult
  $Res call({bool isLoading, String errorMsg, bool isSuccess});
}

/// @nodoc
class _$CreateReviewUiStateCopyWithImpl<$Res, $Val extends CreateReviewUiState>
    implements $CreateReviewUiStateCopyWith<$Res> {
  _$CreateReviewUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMsg = null,
    Object? isSuccess = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMsg: null == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String,
            isSuccess: null == isSuccess
                ? _value.isSuccess
                : isSuccess // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateReviewUiStateImplCopyWith<$Res>
    implements $CreateReviewUiStateCopyWith<$Res> {
  factory _$$CreateReviewUiStateImplCopyWith(
    _$CreateReviewUiStateImpl value,
    $Res Function(_$CreateReviewUiStateImpl) then,
  ) = __$$CreateReviewUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMsg, bool isSuccess});
}

/// @nodoc
class __$$CreateReviewUiStateImplCopyWithImpl<$Res>
    extends _$CreateReviewUiStateCopyWithImpl<$Res, _$CreateReviewUiStateImpl>
    implements _$$CreateReviewUiStateImplCopyWith<$Res> {
  __$$CreateReviewUiStateImplCopyWithImpl(
    _$CreateReviewUiStateImpl _value,
    $Res Function(_$CreateReviewUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMsg = null,
    Object? isSuccess = null,
  }) {
    return _then(
      _$CreateReviewUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMsg: null == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String,
        isSuccess: null == isSuccess
            ? _value.isSuccess
            : isSuccess // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReviewUiStateImpl extends _CreateReviewUiState {
  const _$CreateReviewUiStateImpl({
    this.isLoading = false,
    this.errorMsg = '',
    this.isSuccess = false,
  }) : super._();

  factory _$CreateReviewUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReviewUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMsg;
  @override
  @JsonKey()
  final bool isSuccess;

  @override
  String toString() {
    return 'CreateReviewUiState(isLoading: $isLoading, errorMsg: $errorMsg, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMsg, isSuccess);

  /// Create a copy of CreateReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewUiStateImplCopyWith<_$CreateReviewUiStateImpl> get copyWith =>
      __$$CreateReviewUiStateImplCopyWithImpl<_$CreateReviewUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReviewUiStateImplToJson(this);
  }
}

abstract class _CreateReviewUiState extends CreateReviewUiState {
  const factory _CreateReviewUiState({
    final bool isLoading,
    final String errorMsg,
    final bool isSuccess,
  }) = _$CreateReviewUiStateImpl;
  const _CreateReviewUiState._() : super._();

  factory _CreateReviewUiState.fromJson(Map<String, dynamic> json) =
      _$CreateReviewUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  String get errorMsg;
  @override
  bool get isSuccess;

  /// Create a copy of CreateReviewUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReviewUiStateImplCopyWith<_$CreateReviewUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
