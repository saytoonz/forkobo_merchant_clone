// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShopEntity _$ShopEntityFromJson(Map<String, dynamic> json) {
  return _ShopEntity.fromJson(json);
}

/// @nodoc
mixin _$ShopEntity {
  String get id => throw _privateConstructorUsedError;
  String? get recentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  String? get textLogo => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  ShopCardType get cardType => throw _privateConstructorUsedError;
  String get overlayColor =>
      throw _privateConstructorUsedError; // ProductEntity? featuredProduct,
  @JsonKey(name: 'is_following')
  bool get isFollowing => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_policies')
  ShopPolicies? get activePolicies => throw _privateConstructorUsedError;

  /// Serializes this ShopEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopEntityCopyWith<ShopEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEntityCopyWith<$Res> {
  factory $ShopEntityCopyWith(
    ShopEntity value,
    $Res Function(ShopEntity) then,
  ) = _$ShopEntityCopyWithImpl<$Res, ShopEntity>;
  @useResult
  $Res call({
    String id,
    String? recentId,
    String? name,
    String? logoUrl,
    String? coverImageUrl,
    String? textLogo,
    String? videoUrl,
    double? rating,
    int? reviewCount,
    String description,
    List<CategoryEntity> categories,
    ShopCardType cardType,
    String overlayColor,
    @JsonKey(name: 'is_following') bool isFollowing,
    List<ProductEntity> products,
    @JsonKey(name: 'active_policies') ShopPolicies? activePolicies,
  });

  $ShopPoliciesCopyWith<$Res>? get activePolicies;
}

/// @nodoc
class _$ShopEntityCopyWithImpl<$Res, $Val extends ShopEntity>
    implements $ShopEntityCopyWith<$Res> {
  _$ShopEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recentId = freezed,
    Object? name = freezed,
    Object? logoUrl = freezed,
    Object? coverImageUrl = freezed,
    Object? textLogo = freezed,
    Object? videoUrl = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? description = null,
    Object? categories = null,
    Object? cardType = null,
    Object? overlayColor = null,
    Object? isFollowing = null,
    Object? products = null,
    Object? activePolicies = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            recentId: freezed == recentId
                ? _value.recentId
                : recentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            logoUrl: freezed == logoUrl
                ? _value.logoUrl
                : logoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverImageUrl: freezed == coverImageUrl
                ? _value.coverImageUrl
                : coverImageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            textLogo: freezed == textLogo
                ? _value.textLogo
                : textLogo // ignore: cast_nullable_to_non_nullable
                      as String?,
            videoUrl: freezed == videoUrl
                ? _value.videoUrl
                : videoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            rating: freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double?,
            reviewCount: freezed == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryEntity>,
            cardType: null == cardType
                ? _value.cardType
                : cardType // ignore: cast_nullable_to_non_nullable
                      as ShopCardType,
            overlayColor: null == overlayColor
                ? _value.overlayColor
                : overlayColor // ignore: cast_nullable_to_non_nullable
                      as String,
            isFollowing: null == isFollowing
                ? _value.isFollowing
                : isFollowing // ignore: cast_nullable_to_non_nullable
                      as bool,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<ProductEntity>,
            activePolicies: freezed == activePolicies
                ? _value.activePolicies
                : activePolicies // ignore: cast_nullable_to_non_nullable
                      as ShopPolicies?,
          )
          as $Val,
    );
  }

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopPoliciesCopyWith<$Res>? get activePolicies {
    if (_value.activePolicies == null) {
      return null;
    }

    return $ShopPoliciesCopyWith<$Res>(_value.activePolicies!, (value) {
      return _then(_value.copyWith(activePolicies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopEntityImplCopyWith<$Res>
    implements $ShopEntityCopyWith<$Res> {
  factory _$$ShopEntityImplCopyWith(
    _$ShopEntityImpl value,
    $Res Function(_$ShopEntityImpl) then,
  ) = __$$ShopEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? recentId,
    String? name,
    String? logoUrl,
    String? coverImageUrl,
    String? textLogo,
    String? videoUrl,
    double? rating,
    int? reviewCount,
    String description,
    List<CategoryEntity> categories,
    ShopCardType cardType,
    String overlayColor,
    @JsonKey(name: 'is_following') bool isFollowing,
    List<ProductEntity> products,
    @JsonKey(name: 'active_policies') ShopPolicies? activePolicies,
  });

  @override
  $ShopPoliciesCopyWith<$Res>? get activePolicies;
}

/// @nodoc
class __$$ShopEntityImplCopyWithImpl<$Res>
    extends _$ShopEntityCopyWithImpl<$Res, _$ShopEntityImpl>
    implements _$$ShopEntityImplCopyWith<$Res> {
  __$$ShopEntityImplCopyWithImpl(
    _$ShopEntityImpl _value,
    $Res Function(_$ShopEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recentId = freezed,
    Object? name = freezed,
    Object? logoUrl = freezed,
    Object? coverImageUrl = freezed,
    Object? textLogo = freezed,
    Object? videoUrl = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? description = null,
    Object? categories = null,
    Object? cardType = null,
    Object? overlayColor = null,
    Object? isFollowing = null,
    Object? products = null,
    Object? activePolicies = freezed,
  }) {
    return _then(
      _$ShopEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        recentId: freezed == recentId
            ? _value.recentId
            : recentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        logoUrl: freezed == logoUrl
            ? _value.logoUrl
            : logoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverImageUrl: freezed == coverImageUrl
            ? _value.coverImageUrl
            : coverImageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        textLogo: freezed == textLogo
            ? _value.textLogo
            : textLogo // ignore: cast_nullable_to_non_nullable
                  as String?,
        videoUrl: freezed == videoUrl
            ? _value.videoUrl
            : videoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        rating: freezed == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double?,
        reviewCount: freezed == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryEntity>,
        cardType: null == cardType
            ? _value.cardType
            : cardType // ignore: cast_nullable_to_non_nullable
                  as ShopCardType,
        overlayColor: null == overlayColor
            ? _value.overlayColor
            : overlayColor // ignore: cast_nullable_to_non_nullable
                  as String,
        isFollowing: null == isFollowing
            ? _value.isFollowing
            : isFollowing // ignore: cast_nullable_to_non_nullable
                  as bool,
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<ProductEntity>,
        activePolicies: freezed == activePolicies
            ? _value.activePolicies
            : activePolicies // ignore: cast_nullable_to_non_nullable
                  as ShopPolicies?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopEntityImpl extends _ShopEntity {
  const _$ShopEntityImpl({
    required this.id,
    this.recentId,
    this.name,
    this.logoUrl,
    this.coverImageUrl,
    this.textLogo,
    this.videoUrl,
    this.rating,
    this.reviewCount,
    this.description = '',
    final List<CategoryEntity> categories = const [],
    this.cardType = ShopCardType.productRow,
    this.overlayColor = 'a28c60',
    @JsonKey(name: 'is_following') this.isFollowing = false,
    final List<ProductEntity> products = const [],
    @JsonKey(name: 'active_policies') this.activePolicies,
  }) : _categories = categories,
       _products = products,
       super._();

  factory _$ShopEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String? recentId;
  @override
  final String? name;
  @override
  final String? logoUrl;
  @override
  final String? coverImageUrl;
  @override
  final String? textLogo;
  @override
  final String? videoUrl;
  @override
  final double? rating;
  @override
  final int? reviewCount;
  @override
  @JsonKey()
  final String description;
  final List<CategoryEntity> _categories;
  @override
  @JsonKey()
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ShopCardType cardType;
  @override
  @JsonKey()
  final String overlayColor;
  // ProductEntity? featuredProduct,
  @override
  @JsonKey(name: 'is_following')
  final bool isFollowing;
  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'active_policies')
  final ShopPolicies? activePolicies;

  @override
  String toString() {
    return 'ShopEntity(id: $id, recentId: $recentId, name: $name, logoUrl: $logoUrl, coverImageUrl: $coverImageUrl, textLogo: $textLogo, videoUrl: $videoUrl, rating: $rating, reviewCount: $reviewCount, description: $description, categories: $categories, cardType: $cardType, overlayColor: $overlayColor, isFollowing: $isFollowing, products: $products, activePolicies: $activePolicies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recentId, recentId) ||
                other.recentId == recentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.textLogo, textLogo) ||
                other.textLogo == textLogo) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.activePolicies, activePolicies) ||
                other.activePolicies == activePolicies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    recentId,
    name,
    logoUrl,
    coverImageUrl,
    textLogo,
    videoUrl,
    rating,
    reviewCount,
    description,
    const DeepCollectionEquality().hash(_categories),
    cardType,
    overlayColor,
    isFollowing,
    const DeepCollectionEquality().hash(_products),
    activePolicies,
  );

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopEntityImplCopyWith<_$ShopEntityImpl> get copyWith =>
      __$$ShopEntityImplCopyWithImpl<_$ShopEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopEntityImplToJson(this);
  }
}

abstract class _ShopEntity extends ShopEntity {
  const factory _ShopEntity({
    required final String id,
    final String? recentId,
    final String? name,
    final String? logoUrl,
    final String? coverImageUrl,
    final String? textLogo,
    final String? videoUrl,
    final double? rating,
    final int? reviewCount,
    final String description,
    final List<CategoryEntity> categories,
    final ShopCardType cardType,
    final String overlayColor,
    @JsonKey(name: 'is_following') final bool isFollowing,
    final List<ProductEntity> products,
    @JsonKey(name: 'active_policies') final ShopPolicies? activePolicies,
  }) = _$ShopEntityImpl;
  const _ShopEntity._() : super._();

  factory _ShopEntity.fromJson(Map<String, dynamic> json) =
      _$ShopEntityImpl.fromJson;

  @override
  String get id;
  @override
  String? get recentId;
  @override
  String? get name;
  @override
  String? get logoUrl;
  @override
  String? get coverImageUrl;
  @override
  String? get textLogo;
  @override
  String? get videoUrl;
  @override
  double? get rating;
  @override
  int? get reviewCount;
  @override
  String get description;
  @override
  List<CategoryEntity> get categories;
  @override
  ShopCardType get cardType;
  @override
  String get overlayColor; // ProductEntity? featuredProduct,
  @override
  @JsonKey(name: 'is_following')
  bool get isFollowing;
  @override
  List<ProductEntity> get products;
  @override
  @JsonKey(name: 'active_policies')
  ShopPolicies? get activePolicies;

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopEntityImplCopyWith<_$ShopEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopPolicies _$ShopPoliciesFromJson(Map<String, dynamic> json) {
  return _ShopPolicies.fromJson(json);
}

/// @nodoc
mixin _$ShopPolicies {
  @JsonKey(name: 'terms_and_conditions')
  PoliciesEntity? get terms => throw _privateConstructorUsedError;
  @JsonKey(name: 'privacy_policy')
  PoliciesEntity? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_policy')
  PoliciesEntity? get refund => throw _privateConstructorUsedError;

  /// Serializes this ShopPolicies to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopPoliciesCopyWith<ShopPolicies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPoliciesCopyWith<$Res> {
  factory $ShopPoliciesCopyWith(
    ShopPolicies value,
    $Res Function(ShopPolicies) then,
  ) = _$ShopPoliciesCopyWithImpl<$Res, ShopPolicies>;
  @useResult
  $Res call({
    @JsonKey(name: 'terms_and_conditions') PoliciesEntity? terms,
    @JsonKey(name: 'privacy_policy') PoliciesEntity? privacy,
    @JsonKey(name: 'refund_policy') PoliciesEntity? refund,
  });

  $PoliciesEntityCopyWith<$Res>? get terms;
  $PoliciesEntityCopyWith<$Res>? get privacy;
  $PoliciesEntityCopyWith<$Res>? get refund;
}

/// @nodoc
class _$ShopPoliciesCopyWithImpl<$Res, $Val extends ShopPolicies>
    implements $ShopPoliciesCopyWith<$Res> {
  _$ShopPoliciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = freezed,
    Object? privacy = freezed,
    Object? refund = freezed,
  }) {
    return _then(
      _value.copyWith(
            terms: freezed == terms
                ? _value.terms
                : terms // ignore: cast_nullable_to_non_nullable
                      as PoliciesEntity?,
            privacy: freezed == privacy
                ? _value.privacy
                : privacy // ignore: cast_nullable_to_non_nullable
                      as PoliciesEntity?,
            refund: freezed == refund
                ? _value.refund
                : refund // ignore: cast_nullable_to_non_nullable
                      as PoliciesEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PoliciesEntityCopyWith<$Res>? get terms {
    if (_value.terms == null) {
      return null;
    }

    return $PoliciesEntityCopyWith<$Res>(_value.terms!, (value) {
      return _then(_value.copyWith(terms: value) as $Val);
    });
  }

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PoliciesEntityCopyWith<$Res>? get privacy {
    if (_value.privacy == null) {
      return null;
    }

    return $PoliciesEntityCopyWith<$Res>(_value.privacy!, (value) {
      return _then(_value.copyWith(privacy: value) as $Val);
    });
  }

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PoliciesEntityCopyWith<$Res>? get refund {
    if (_value.refund == null) {
      return null;
    }

    return $PoliciesEntityCopyWith<$Res>(_value.refund!, (value) {
      return _then(_value.copyWith(refund: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopPoliciesImplCopyWith<$Res>
    implements $ShopPoliciesCopyWith<$Res> {
  factory _$$ShopPoliciesImplCopyWith(
    _$ShopPoliciesImpl value,
    $Res Function(_$ShopPoliciesImpl) then,
  ) = __$$ShopPoliciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'terms_and_conditions') PoliciesEntity? terms,
    @JsonKey(name: 'privacy_policy') PoliciesEntity? privacy,
    @JsonKey(name: 'refund_policy') PoliciesEntity? refund,
  });

  @override
  $PoliciesEntityCopyWith<$Res>? get terms;
  @override
  $PoliciesEntityCopyWith<$Res>? get privacy;
  @override
  $PoliciesEntityCopyWith<$Res>? get refund;
}

/// @nodoc
class __$$ShopPoliciesImplCopyWithImpl<$Res>
    extends _$ShopPoliciesCopyWithImpl<$Res, _$ShopPoliciesImpl>
    implements _$$ShopPoliciesImplCopyWith<$Res> {
  __$$ShopPoliciesImplCopyWithImpl(
    _$ShopPoliciesImpl _value,
    $Res Function(_$ShopPoliciesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = freezed,
    Object? privacy = freezed,
    Object? refund = freezed,
  }) {
    return _then(
      _$ShopPoliciesImpl(
        terms: freezed == terms
            ? _value.terms
            : terms // ignore: cast_nullable_to_non_nullable
                  as PoliciesEntity?,
        privacy: freezed == privacy
            ? _value.privacy
            : privacy // ignore: cast_nullable_to_non_nullable
                  as PoliciesEntity?,
        refund: freezed == refund
            ? _value.refund
            : refund // ignore: cast_nullable_to_non_nullable
                  as PoliciesEntity?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopPoliciesImpl extends _ShopPolicies {
  const _$ShopPoliciesImpl({
    @JsonKey(name: 'terms_and_conditions') this.terms,
    @JsonKey(name: 'privacy_policy') this.privacy,
    @JsonKey(name: 'refund_policy') this.refund,
  }) : super._();

  factory _$ShopPoliciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopPoliciesImplFromJson(json);

  @override
  @JsonKey(name: 'terms_and_conditions')
  final PoliciesEntity? terms;
  @override
  @JsonKey(name: 'privacy_policy')
  final PoliciesEntity? privacy;
  @override
  @JsonKey(name: 'refund_policy')
  final PoliciesEntity? refund;

  @override
  String toString() {
    return 'ShopPolicies(terms: $terms, privacy: $privacy, refund: $refund)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopPoliciesImpl &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.refund, refund) || other.refund == refund));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, terms, privacy, refund);

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopPoliciesImplCopyWith<_$ShopPoliciesImpl> get copyWith =>
      __$$ShopPoliciesImplCopyWithImpl<_$ShopPoliciesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopPoliciesImplToJson(this);
  }
}

abstract class _ShopPolicies extends ShopPolicies {
  const factory _ShopPolicies({
    @JsonKey(name: 'terms_and_conditions') final PoliciesEntity? terms,
    @JsonKey(name: 'privacy_policy') final PoliciesEntity? privacy,
    @JsonKey(name: 'refund_policy') final PoliciesEntity? refund,
  }) = _$ShopPoliciesImpl;
  const _ShopPolicies._() : super._();

  factory _ShopPolicies.fromJson(Map<String, dynamic> json) =
      _$ShopPoliciesImpl.fromJson;

  @override
  @JsonKey(name: 'terms_and_conditions')
  PoliciesEntity? get terms;
  @override
  @JsonKey(name: 'privacy_policy')
  PoliciesEntity? get privacy;
  @override
  @JsonKey(name: 'refund_policy')
  PoliciesEntity? get refund;

  /// Create a copy of ShopPolicies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopPoliciesImplCopyWith<_$ShopPoliciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
