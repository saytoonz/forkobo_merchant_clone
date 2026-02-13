// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchUiState _$SearchUiStateFromJson(Map<String, dynamic> json) {
  return _SearchUiState.fromJson(json);
}

/// @nodoc
mixin _$SearchUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CategoryEntity> get mainCategories => throw _privateConstructorUsedError;
  List<CategoryEntity> get subCategories => throw _privateConstructorUsedError;
  List<ProductEntity> get searchResults => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  /// Serializes this SearchUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUiStateCopyWith<SearchUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUiStateCopyWith<$Res> {
  factory $SearchUiStateCopyWith(
    SearchUiState value,
    $Res Function(SearchUiState) then,
  ) = _$SearchUiStateCopyWithImpl<$Res, SearchUiState>;
  @useResult
  $Res call({
    bool isLoading,
    List<CategoryEntity> mainCategories,
    List<CategoryEntity> subCategories,
    List<ProductEntity> searchResults,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class _$SearchUiStateCopyWithImpl<$Res, $Val extends SearchUiState>
    implements $SearchUiStateCopyWith<$Res> {
  _$SearchUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? mainCategories = null,
    Object? subCategories = null,
    Object? searchResults = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            mainCategories: null == mainCategories
                ? _value.mainCategories
                : mainCategories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryEntity>,
            subCategories: null == subCategories
                ? _value.subCategories
                : subCategories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryEntity>,
            searchResults: null == searchResults
                ? _value.searchResults
                : searchResults // ignore: cast_nullable_to_non_nullable
                      as List<ProductEntity>,
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
abstract class _$$SearchUiStateImplCopyWith<$Res>
    implements $SearchUiStateCopyWith<$Res> {
  factory _$$SearchUiStateImplCopyWith(
    _$SearchUiStateImpl value,
    $Res Function(_$SearchUiStateImpl) then,
  ) = __$$SearchUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<CategoryEntity> mainCategories,
    List<CategoryEntity> subCategories,
    List<ProductEntity> searchResults,
    String errorMsg,
    String? nextUrl,
  });
}

/// @nodoc
class __$$SearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$SearchUiStateImpl>
    implements _$$SearchUiStateImplCopyWith<$Res> {
  __$$SearchUiStateImplCopyWithImpl(
    _$SearchUiStateImpl _value,
    $Res Function(_$SearchUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? mainCategories = null,
    Object? subCategories = null,
    Object? searchResults = null,
    Object? errorMsg = null,
    Object? nextUrl = freezed,
  }) {
    return _then(
      _$SearchUiStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        mainCategories: null == mainCategories
            ? _value._mainCategories
            : mainCategories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryEntity>,
        subCategories: null == subCategories
            ? _value._subCategories
            : subCategories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryEntity>,
        searchResults: null == searchResults
            ? _value._searchResults
            : searchResults // ignore: cast_nullable_to_non_nullable
                  as List<ProductEntity>,
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
class _$SearchUiStateImpl extends _SearchUiState {
  const _$SearchUiStateImpl({
    this.isLoading = false,
    final List<CategoryEntity> mainCategories = const [],
    final List<CategoryEntity> subCategories = const [],
    final List<ProductEntity> searchResults = const [],
    this.errorMsg = '',
    this.nextUrl,
  }) : _mainCategories = mainCategories,
       _subCategories = subCategories,
       _searchResults = searchResults,
       super._();

  factory _$SearchUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchUiStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<CategoryEntity> _mainCategories;
  @override
  @JsonKey()
  List<CategoryEntity> get mainCategories {
    if (_mainCategories is EqualUnmodifiableListView) return _mainCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainCategories);
  }

  final List<CategoryEntity> _subCategories;
  @override
  @JsonKey()
  List<CategoryEntity> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  final List<ProductEntity> _searchResults;
  @override
  @JsonKey()
  List<ProductEntity> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  @JsonKey()
  final String errorMsg;
  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'SearchUiState(isLoading: $isLoading, mainCategories: $mainCategories, subCategories: $subCategories, searchResults: $searchResults, errorMsg: $errorMsg, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(
              other._mainCategories,
              _mainCategories,
            ) &&
            const DeepCollectionEquality().equals(
              other._subCategories,
              _subCategories,
            ) &&
            const DeepCollectionEquality().equals(
              other._searchResults,
              _searchResults,
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
    const DeepCollectionEquality().hash(_mainCategories),
    const DeepCollectionEquality().hash(_subCategories),
    const DeepCollectionEquality().hash(_searchResults),
    errorMsg,
    nextUrl,
  );

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUiStateImplCopyWith<_$SearchUiStateImpl> get copyWith =>
      __$$SearchUiStateImplCopyWithImpl<_$SearchUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchUiStateImplToJson(this);
  }
}

abstract class _SearchUiState extends SearchUiState {
  const factory _SearchUiState({
    final bool isLoading,
    final List<CategoryEntity> mainCategories,
    final List<CategoryEntity> subCategories,
    final List<ProductEntity> searchResults,
    final String errorMsg,
    final String? nextUrl,
  }) = _$SearchUiStateImpl;
  const _SearchUiState._() : super._();

  factory _SearchUiState.fromJson(Map<String, dynamic> json) =
      _$SearchUiStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<CategoryEntity> get mainCategories;
  @override
  List<CategoryEntity> get subCategories;
  @override
  List<ProductEntity> get searchResults;
  @override
  String get errorMsg;
  @override
  String? get nextUrl;

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUiStateImplCopyWith<_$SearchUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
