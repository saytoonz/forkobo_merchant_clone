// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
  String get id => throw _privateConstructorUsedError;
  String? get recentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  num get currentPrice => throw _privateConstructorUsedError;
  String? get shopId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  int get totalRatingCount => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;
  CategoryEntity? get subcategory => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ProductVariationEntity> get variations =>
      throw _privateConstructorUsedError;
  ProductDiscountEntity? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_saved')
  bool get isSaved => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool get isFavorite => throw _privateConstructorUsedError; // Review-related fields
  @JsonKey(name: 'rating_breakdown')
  Map<String, int>? get ratingBreakdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'recent_reviews')
  List<ReviewEntity> get recentReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_review')
  ReviewEntity? get userReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_review')
  bool get canReview => throw _privateConstructorUsedError;

  /// Serializes this ProductEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
    ProductEntity value,
    $Res Function(ProductEntity) then,
  ) = _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call({
    String id,
    String? recentId,
    String? name,
    num price,
    @JsonKey(name: 'current_price') num currentPrice,
    String? shopId,
    double rating,
    int reviewCount,
    int totalRatingCount,
    List<String> imageUrls,
    CategoryEntity? category,
    CategoryEntity? subcategory,
    String description,
    List<ProductVariationEntity> variations,
    ProductDiscountEntity? discount,
    @JsonKey(name: 'is_saved') bool isSaved,
    @JsonKey(name: 'is_favorite') bool isFavorite,
    @JsonKey(name: 'rating_breakdown') Map<String, int>? ratingBreakdown,
    @JsonKey(name: 'recent_reviews') List<ReviewEntity> recentReviews,
    @JsonKey(name: 'user_review') ReviewEntity? userReview,
    @JsonKey(name: 'can_review') bool canReview,
  });

  $CategoryEntityCopyWith<$Res>? get category;
  $CategoryEntityCopyWith<$Res>? get subcategory;
  $ProductDiscountEntityCopyWith<$Res>? get discount;
  $ReviewEntityCopyWith<$Res>? get userReview;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recentId = freezed,
    Object? name = freezed,
    Object? price = null,
    Object? currentPrice = null,
    Object? shopId = freezed,
    Object? rating = null,
    Object? reviewCount = null,
    Object? totalRatingCount = null,
    Object? imageUrls = null,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? description = null,
    Object? variations = null,
    Object? discount = freezed,
    Object? isSaved = null,
    Object? isFavorite = null,
    Object? ratingBreakdown = freezed,
    Object? recentReviews = null,
    Object? userReview = freezed,
    Object? canReview = null,
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
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as num,
            currentPrice: null == currentPrice
                ? _value.currentPrice
                : currentPrice // ignore: cast_nullable_to_non_nullable
                      as num,
            shopId: freezed == shopId
                ? _value.shopId
                : shopId // ignore: cast_nullable_to_non_nullable
                      as String?,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewCount: null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalRatingCount: null == totalRatingCount
                ? _value.totalRatingCount
                : totalRatingCount // ignore: cast_nullable_to_non_nullable
                      as int,
            imageUrls: null == imageUrls
                ? _value.imageUrls
                : imageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as CategoryEntity?,
            subcategory: freezed == subcategory
                ? _value.subcategory
                : subcategory // ignore: cast_nullable_to_non_nullable
                      as CategoryEntity?,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            variations: null == variations
                ? _value.variations
                : variations // ignore: cast_nullable_to_non_nullable
                      as List<ProductVariationEntity>,
            discount: freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as ProductDiscountEntity?,
            isSaved: null == isSaved
                ? _value.isSaved
                : isSaved // ignore: cast_nullable_to_non_nullable
                      as bool,
            isFavorite: null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as bool,
            ratingBreakdown: freezed == ratingBreakdown
                ? _value.ratingBreakdown
                : ratingBreakdown // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>?,
            recentReviews: null == recentReviews
                ? _value.recentReviews
                : recentReviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewEntity>,
            userReview: freezed == userReview
                ? _value.userReview
                : userReview // ignore: cast_nullable_to_non_nullable
                      as ReviewEntity?,
            canReview: null == canReview
                ? _value.canReview
                : canReview // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDiscountEntityCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $ProductDiscountEntityCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewEntityCopyWith<$Res>? get userReview {
    if (_value.userReview == null) {
      return null;
    }

    return $ReviewEntityCopyWith<$Res>(_value.userReview!, (value) {
      return _then(_value.copyWith(userReview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
    _$ProductEntityImpl value,
    $Res Function(_$ProductEntityImpl) then,
  ) = __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? recentId,
    String? name,
    num price,
    @JsonKey(name: 'current_price') num currentPrice,
    String? shopId,
    double rating,
    int reviewCount,
    int totalRatingCount,
    List<String> imageUrls,
    CategoryEntity? category,
    CategoryEntity? subcategory,
    String description,
    List<ProductVariationEntity> variations,
    ProductDiscountEntity? discount,
    @JsonKey(name: 'is_saved') bool isSaved,
    @JsonKey(name: 'is_favorite') bool isFavorite,
    @JsonKey(name: 'rating_breakdown') Map<String, int>? ratingBreakdown,
    @JsonKey(name: 'recent_reviews') List<ReviewEntity> recentReviews,
    @JsonKey(name: 'user_review') ReviewEntity? userReview,
    @JsonKey(name: 'can_review') bool canReview,
  });

  @override
  $CategoryEntityCopyWith<$Res>? get category;
  @override
  $CategoryEntityCopyWith<$Res>? get subcategory;
  @override
  $ProductDiscountEntityCopyWith<$Res>? get discount;
  @override
  $ReviewEntityCopyWith<$Res>? get userReview;
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
    _$ProductEntityImpl _value,
    $Res Function(_$ProductEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recentId = freezed,
    Object? name = freezed,
    Object? price = null,
    Object? currentPrice = null,
    Object? shopId = freezed,
    Object? rating = null,
    Object? reviewCount = null,
    Object? totalRatingCount = null,
    Object? imageUrls = null,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? description = null,
    Object? variations = null,
    Object? discount = freezed,
    Object? isSaved = null,
    Object? isFavorite = null,
    Object? ratingBreakdown = freezed,
    Object? recentReviews = null,
    Object? userReview = freezed,
    Object? canReview = null,
  }) {
    return _then(
      _$ProductEntityImpl(
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
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as num,
        currentPrice: null == currentPrice
            ? _value.currentPrice
            : currentPrice // ignore: cast_nullable_to_non_nullable
                  as num,
        shopId: freezed == shopId
            ? _value.shopId
            : shopId // ignore: cast_nullable_to_non_nullable
                  as String?,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewCount: null == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalRatingCount: null == totalRatingCount
            ? _value.totalRatingCount
            : totalRatingCount // ignore: cast_nullable_to_non_nullable
                  as int,
        imageUrls: null == imageUrls
            ? _value._imageUrls
            : imageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as CategoryEntity?,
        subcategory: freezed == subcategory
            ? _value.subcategory
            : subcategory // ignore: cast_nullable_to_non_nullable
                  as CategoryEntity?,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        variations: null == variations
            ? _value._variations
            : variations // ignore: cast_nullable_to_non_nullable
                  as List<ProductVariationEntity>,
        discount: freezed == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as ProductDiscountEntity?,
        isSaved: null == isSaved
            ? _value.isSaved
            : isSaved // ignore: cast_nullable_to_non_nullable
                  as bool,
        isFavorite: null == isFavorite
            ? _value.isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as bool,
        ratingBreakdown: freezed == ratingBreakdown
            ? _value._ratingBreakdown
            : ratingBreakdown // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>?,
        recentReviews: null == recentReviews
            ? _value._recentReviews
            : recentReviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewEntity>,
        userReview: freezed == userReview
            ? _value.userReview
            : userReview // ignore: cast_nullable_to_non_nullable
                  as ReviewEntity?,
        canReview: null == canReview
            ? _value.canReview
            : canReview // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductEntityImpl extends _ProductEntity {
  const _$ProductEntityImpl({
    required this.id,
    this.recentId,
    this.name,
    this.price = 0,
    @JsonKey(name: 'current_price') this.currentPrice = 0,
    this.shopId,
    this.rating = 5,
    this.reviewCount = 0,
    this.totalRatingCount = 0,
    final List<String> imageUrls = const [],
    this.category,
    this.subcategory,
    this.description = '',
    final List<ProductVariationEntity> variations = const [],
    this.discount,
    @JsonKey(name: 'is_saved') this.isSaved = false,
    @JsonKey(name: 'is_favorite') this.isFavorite = false,
    @JsonKey(name: 'rating_breakdown') final Map<String, int>? ratingBreakdown,
    @JsonKey(name: 'recent_reviews')
    final List<ReviewEntity> recentReviews = const [],
    @JsonKey(name: 'user_review') this.userReview,
    @JsonKey(name: 'can_review') this.canReview = false,
  }) : _imageUrls = imageUrls,
       _variations = variations,
       _ratingBreakdown = ratingBreakdown,
       _recentReviews = recentReviews,
       super._();

  factory _$ProductEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String? recentId;
  @override
  final String? name;
  @override
  @JsonKey()
  final num price;
  @override
  @JsonKey(name: 'current_price')
  final num currentPrice;
  @override
  final String? shopId;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;
  @override
  @JsonKey()
  final int totalRatingCount;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final CategoryEntity? category;
  @override
  final CategoryEntity? subcategory;
  @override
  @JsonKey()
  final String description;
  final List<ProductVariationEntity> _variations;
  @override
  @JsonKey()
  List<ProductVariationEntity> get variations {
    if (_variations is EqualUnmodifiableListView) return _variations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variations);
  }

  @override
  final ProductDiscountEntity? discount;
  @override
  @JsonKey(name: 'is_saved')
  final bool isSaved;
  @override
  @JsonKey(name: 'is_favorite')
  final bool isFavorite;
  // Review-related fields
  final Map<String, int>? _ratingBreakdown;
  // Review-related fields
  @override
  @JsonKey(name: 'rating_breakdown')
  Map<String, int>? get ratingBreakdown {
    final value = _ratingBreakdown;
    if (value == null) return null;
    if (_ratingBreakdown is EqualUnmodifiableMapView) return _ratingBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<ReviewEntity> _recentReviews;
  @override
  @JsonKey(name: 'recent_reviews')
  List<ReviewEntity> get recentReviews {
    if (_recentReviews is EqualUnmodifiableListView) return _recentReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentReviews);
  }

  @override
  @JsonKey(name: 'user_review')
  final ReviewEntity? userReview;
  @override
  @JsonKey(name: 'can_review')
  final bool canReview;

  @override
  String toString() {
    return 'ProductEntity(id: $id, recentId: $recentId, name: $name, price: $price, currentPrice: $currentPrice, shopId: $shopId, rating: $rating, reviewCount: $reviewCount, totalRatingCount: $totalRatingCount, imageUrls: $imageUrls, category: $category, subcategory: $subcategory, description: $description, variations: $variations, discount: $discount, isSaved: $isSaved, isFavorite: $isFavorite, ratingBreakdown: $ratingBreakdown, recentReviews: $recentReviews, userReview: $userReview, canReview: $canReview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recentId, recentId) ||
                other.recentId == recentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.totalRatingCount, totalRatingCount) ||
                other.totalRatingCount == totalRatingCount) &&
            const DeepCollectionEquality().equals(
              other._imageUrls,
              _imageUrls,
            ) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._variations,
              _variations,
            ) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(
              other._ratingBreakdown,
              _ratingBreakdown,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentReviews,
              _recentReviews,
            ) &&
            (identical(other.userReview, userReview) ||
                other.userReview == userReview) &&
            (identical(other.canReview, canReview) ||
                other.canReview == canReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    recentId,
    name,
    price,
    currentPrice,
    shopId,
    rating,
    reviewCount,
    totalRatingCount,
    const DeepCollectionEquality().hash(_imageUrls),
    category,
    subcategory,
    description,
    const DeepCollectionEquality().hash(_variations),
    discount,
    isSaved,
    isFavorite,
    const DeepCollectionEquality().hash(_ratingBreakdown),
    const DeepCollectionEquality().hash(_recentReviews),
    userReview,
    canReview,
  ]);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductEntityImplToJson(this);
  }
}

abstract class _ProductEntity extends ProductEntity {
  const factory _ProductEntity({
    required final String id,
    final String? recentId,
    final String? name,
    final num price,
    @JsonKey(name: 'current_price') final num currentPrice,
    final String? shopId,
    final double rating,
    final int reviewCount,
    final int totalRatingCount,
    final List<String> imageUrls,
    final CategoryEntity? category,
    final CategoryEntity? subcategory,
    final String description,
    final List<ProductVariationEntity> variations,
    final ProductDiscountEntity? discount,
    @JsonKey(name: 'is_saved') final bool isSaved,
    @JsonKey(name: 'is_favorite') final bool isFavorite,
    @JsonKey(name: 'rating_breakdown') final Map<String, int>? ratingBreakdown,
    @JsonKey(name: 'recent_reviews') final List<ReviewEntity> recentReviews,
    @JsonKey(name: 'user_review') final ReviewEntity? userReview,
    @JsonKey(name: 'can_review') final bool canReview,
  }) = _$ProductEntityImpl;
  const _ProductEntity._() : super._();

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$ProductEntityImpl.fromJson;

  @override
  String get id;
  @override
  String? get recentId;
  @override
  String? get name;
  @override
  num get price;
  @override
  @JsonKey(name: 'current_price')
  num get currentPrice;
  @override
  String? get shopId;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  int get totalRatingCount;
  @override
  List<String> get imageUrls;
  @override
  CategoryEntity? get category;
  @override
  CategoryEntity? get subcategory;
  @override
  String get description;
  @override
  List<ProductVariationEntity> get variations;
  @override
  ProductDiscountEntity? get discount;
  @override
  @JsonKey(name: 'is_saved')
  bool get isSaved;
  @override
  @JsonKey(name: 'is_favorite')
  bool get isFavorite; // Review-related fields
  @override
  @JsonKey(name: 'rating_breakdown')
  Map<String, int>? get ratingBreakdown;
  @override
  @JsonKey(name: 'recent_reviews')
  List<ReviewEntity> get recentReviews;
  @override
  @JsonKey(name: 'user_review')
  ReviewEntity? get userReview;
  @override
  @JsonKey(name: 'can_review')
  bool get canReview;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
