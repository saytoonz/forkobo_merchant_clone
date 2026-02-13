// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewEntity _$ReviewEntityFromJson(Map<String, dynamic> json) {
  return _ReviewEntity.fromJson(json);
}

/// @nodoc
mixin _$ReviewEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_id')
  String get shopId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_avatar')
  String? get userAvatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified_purchase')
  bool get isVerifiedPurchase => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous => throw _privateConstructorUsedError;
  @JsonKey(name: 'helpful_count')
  int get helpfulCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_helpful_by_user')
  bool? get isHelpfulByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_images')
  List<String> get reviewImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ReviewEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewEntityCopyWith<ReviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEntityCopyWith<$Res> {
  factory $ReviewEntityCopyWith(
    ReviewEntity value,
    $Res Function(ReviewEntity) then,
  ) = _$ReviewEntityCopyWithImpl<$Res, ReviewEntity>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'product_id') String productId,
    @JsonKey(name: 'shop_id') String shopId,
    int rating,
    String? title,
    String? comment,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_avatar') String? userAvatar,
    @JsonKey(name: 'is_verified_purchase') bool isVerifiedPurchase,
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
    @JsonKey(name: 'helpful_count') int helpfulCount,
    @JsonKey(name: 'is_helpful_by_user') bool? isHelpfulByUser,
    @JsonKey(name: 'review_images') List<String> reviewImages,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String status,
  });
}

/// @nodoc
class _$ReviewEntityCopyWithImpl<$Res, $Val extends ReviewEntity>
    implements $ReviewEntityCopyWith<$Res> {
  _$ReviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? shopId = null,
    Object? rating = null,
    Object? title = freezed,
    Object? comment = freezed,
    Object? userName = freezed,
    Object? userAvatar = freezed,
    Object? isVerifiedPurchase = null,
    Object? isAnonymous = null,
    Object? helpfulCount = null,
    Object? isHelpfulByUser = freezed,
    Object? reviewImages = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            shopId: null == shopId
                ? _value.shopId
                : shopId // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userAvatar: freezed == userAvatar
                ? _value.userAvatar
                : userAvatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            isVerifiedPurchase: null == isVerifiedPurchase
                ? _value.isVerifiedPurchase
                : isVerifiedPurchase // ignore: cast_nullable_to_non_nullable
                      as bool,
            isAnonymous: null == isAnonymous
                ? _value.isAnonymous
                : isAnonymous // ignore: cast_nullable_to_non_nullable
                      as bool,
            helpfulCount: null == helpfulCount
                ? _value.helpfulCount
                : helpfulCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isHelpfulByUser: freezed == isHelpfulByUser
                ? _value.isHelpfulByUser
                : isHelpfulByUser // ignore: cast_nullable_to_non_nullable
                      as bool?,
            reviewImages: null == reviewImages
                ? _value.reviewImages
                : reviewImages // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewEntityImplCopyWith<$Res>
    implements $ReviewEntityCopyWith<$Res> {
  factory _$$ReviewEntityImplCopyWith(
    _$ReviewEntityImpl value,
    $Res Function(_$ReviewEntityImpl) then,
  ) = __$$ReviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'product_id') String productId,
    @JsonKey(name: 'shop_id') String shopId,
    int rating,
    String? title,
    String? comment,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_avatar') String? userAvatar,
    @JsonKey(name: 'is_verified_purchase') bool isVerifiedPurchase,
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
    @JsonKey(name: 'helpful_count') int helpfulCount,
    @JsonKey(name: 'is_helpful_by_user') bool? isHelpfulByUser,
    @JsonKey(name: 'review_images') List<String> reviewImages,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String status,
  });
}

/// @nodoc
class __$$ReviewEntityImplCopyWithImpl<$Res>
    extends _$ReviewEntityCopyWithImpl<$Res, _$ReviewEntityImpl>
    implements _$$ReviewEntityImplCopyWith<$Res> {
  __$$ReviewEntityImplCopyWithImpl(
    _$ReviewEntityImpl _value,
    $Res Function(_$ReviewEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? shopId = null,
    Object? rating = null,
    Object? title = freezed,
    Object? comment = freezed,
    Object? userName = freezed,
    Object? userAvatar = freezed,
    Object? isVerifiedPurchase = null,
    Object? isAnonymous = null,
    Object? helpfulCount = null,
    Object? isHelpfulByUser = freezed,
    Object? reviewImages = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = null,
  }) {
    return _then(
      _$ReviewEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        shopId: null == shopId
            ? _value.shopId
            : shopId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userAvatar: freezed == userAvatar
            ? _value.userAvatar
            : userAvatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        isVerifiedPurchase: null == isVerifiedPurchase
            ? _value.isVerifiedPurchase
            : isVerifiedPurchase // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAnonymous: null == isAnonymous
            ? _value.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as bool,
        helpfulCount: null == helpfulCount
            ? _value.helpfulCount
            : helpfulCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isHelpfulByUser: freezed == isHelpfulByUser
            ? _value.isHelpfulByUser
            : isHelpfulByUser // ignore: cast_nullable_to_non_nullable
                  as bool?,
        reviewImages: null == reviewImages
            ? _value._reviewImages
            : reviewImages // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewEntityImpl extends _ReviewEntity {
  const _$ReviewEntityImpl({
    required this.id,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'shop_id') required this.shopId,
    required this.rating,
    this.title,
    this.comment,
    @JsonKey(name: 'user_name') this.userName,
    @JsonKey(name: 'user_avatar') this.userAvatar,
    @JsonKey(name: 'is_verified_purchase') this.isVerifiedPurchase = false,
    @JsonKey(name: 'is_anonymous') this.isAnonymous = false,
    @JsonKey(name: 'helpful_count') this.helpfulCount = 0,
    @JsonKey(name: 'is_helpful_by_user') this.isHelpfulByUser,
    @JsonKey(name: 'review_images') final List<String> reviewImages = const [],
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.status = 'active',
  }) : _reviewImages = reviewImages,
       super._();

  factory _$ReviewEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey(name: 'shop_id')
  final String shopId;
  @override
  final int rating;
  @override
  final String? title;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_avatar')
  final String? userAvatar;
  @override
  @JsonKey(name: 'is_verified_purchase')
  final bool isVerifiedPurchase;
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;
  @override
  @JsonKey(name: 'helpful_count')
  final int helpfulCount;
  @override
  @JsonKey(name: 'is_helpful_by_user')
  final bool? isHelpfulByUser;
  final List<String> _reviewImages;
  @override
  @JsonKey(name: 'review_images')
  List<String> get reviewImages {
    if (_reviewImages is EqualUnmodifiableListView) return _reviewImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewImages);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'ReviewEntity(id: $id, userId: $userId, productId: $productId, shopId: $shopId, rating: $rating, title: $title, comment: $comment, userName: $userName, userAvatar: $userAvatar, isVerifiedPurchase: $isVerifiedPurchase, isAnonymous: $isAnonymous, helpfulCount: $helpfulCount, isHelpfulByUser: $isHelpfulByUser, reviewImages: $reviewImages, createdAt: $createdAt, updatedAt: $updatedAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAvatar, userAvatar) ||
                other.userAvatar == userAvatar) &&
            (identical(other.isVerifiedPurchase, isVerifiedPurchase) ||
                other.isVerifiedPurchase == isVerifiedPurchase) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.helpfulCount, helpfulCount) ||
                other.helpfulCount == helpfulCount) &&
            (identical(other.isHelpfulByUser, isHelpfulByUser) ||
                other.isHelpfulByUser == isHelpfulByUser) &&
            const DeepCollectionEquality().equals(
              other._reviewImages,
              _reviewImages,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    productId,
    shopId,
    rating,
    title,
    comment,
    userName,
    userAvatar,
    isVerifiedPurchase,
    isAnonymous,
    helpfulCount,
    isHelpfulByUser,
    const DeepCollectionEquality().hash(_reviewImages),
    createdAt,
    updatedAt,
    status,
  );

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewEntityImplCopyWith<_$ReviewEntityImpl> get copyWith =>
      __$$ReviewEntityImplCopyWithImpl<_$ReviewEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewEntityImplToJson(this);
  }
}

abstract class _ReviewEntity extends ReviewEntity {
  const factory _ReviewEntity({
    required final String id,
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'product_id') required final String productId,
    @JsonKey(name: 'shop_id') required final String shopId,
    required final int rating,
    final String? title,
    final String? comment,
    @JsonKey(name: 'user_name') final String? userName,
    @JsonKey(name: 'user_avatar') final String? userAvatar,
    @JsonKey(name: 'is_verified_purchase') final bool isVerifiedPurchase,
    @JsonKey(name: 'is_anonymous') final bool isAnonymous,
    @JsonKey(name: 'helpful_count') final int helpfulCount,
    @JsonKey(name: 'is_helpful_by_user') final bool? isHelpfulByUser,
    @JsonKey(name: 'review_images') final List<String> reviewImages,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    final String status,
  }) = _$ReviewEntityImpl;
  const _ReviewEntity._() : super._();

  factory _ReviewEntity.fromJson(Map<String, dynamic> json) =
      _$ReviewEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  @JsonKey(name: 'shop_id')
  String get shopId;
  @override
  int get rating;
  @override
  String? get title;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_avatar')
  String? get userAvatar;
  @override
  @JsonKey(name: 'is_verified_purchase')
  bool get isVerifiedPurchase;
  @override
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;
  @override
  @JsonKey(name: 'helpful_count')
  int get helpfulCount;
  @override
  @JsonKey(name: 'is_helpful_by_user')
  bool? get isHelpfulByUser;
  @override
  @JsonKey(name: 'review_images')
  List<String> get reviewImages;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String get status;

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewEntityImplCopyWith<_$ReviewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewListResponse _$ReviewListResponseFromJson(Map<String, dynamic> json) {
  return _ReviewListResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewListResponse {
  List<ReviewEntity> get reviews => throw _privateConstructorUsedError;
  ReviewPagination get pagination => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_breakdown')
  RatingBreakdown get ratingBreakdown => throw _privateConstructorUsedError;

  /// Serializes this ReviewListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewListResponseCopyWith<ReviewListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListResponseCopyWith<$Res> {
  factory $ReviewListResponseCopyWith(
    ReviewListResponse value,
    $Res Function(ReviewListResponse) then,
  ) = _$ReviewListResponseCopyWithImpl<$Res, ReviewListResponse>;
  @useResult
  $Res call({
    List<ReviewEntity> reviews,
    ReviewPagination pagination,
    @JsonKey(name: 'rating_breakdown') RatingBreakdown ratingBreakdown,
  });

  $ReviewPaginationCopyWith<$Res> get pagination;
  $RatingBreakdownCopyWith<$Res> get ratingBreakdown;
}

/// @nodoc
class _$ReviewListResponseCopyWithImpl<$Res, $Val extends ReviewListResponse>
    implements $ReviewListResponseCopyWith<$Res> {
  _$ReviewListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? pagination = null,
    Object? ratingBreakdown = null,
  }) {
    return _then(
      _value.copyWith(
            reviews: null == reviews
                ? _value.reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewEntity>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as ReviewPagination,
            ratingBreakdown: null == ratingBreakdown
                ? _value.ratingBreakdown
                : ratingBreakdown // ignore: cast_nullable_to_non_nullable
                      as RatingBreakdown,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewPaginationCopyWith<$Res> get pagination {
    return $ReviewPaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingBreakdownCopyWith<$Res> get ratingBreakdown {
    return $RatingBreakdownCopyWith<$Res>(_value.ratingBreakdown, (value) {
      return _then(_value.copyWith(ratingBreakdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewListResponseImplCopyWith<$Res>
    implements $ReviewListResponseCopyWith<$Res> {
  factory _$$ReviewListResponseImplCopyWith(
    _$ReviewListResponseImpl value,
    $Res Function(_$ReviewListResponseImpl) then,
  ) = __$$ReviewListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ReviewEntity> reviews,
    ReviewPagination pagination,
    @JsonKey(name: 'rating_breakdown') RatingBreakdown ratingBreakdown,
  });

  @override
  $ReviewPaginationCopyWith<$Res> get pagination;
  @override
  $RatingBreakdownCopyWith<$Res> get ratingBreakdown;
}

/// @nodoc
class __$$ReviewListResponseImplCopyWithImpl<$Res>
    extends _$ReviewListResponseCopyWithImpl<$Res, _$ReviewListResponseImpl>
    implements _$$ReviewListResponseImplCopyWith<$Res> {
  __$$ReviewListResponseImplCopyWithImpl(
    _$ReviewListResponseImpl _value,
    $Res Function(_$ReviewListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? pagination = null,
    Object? ratingBreakdown = null,
  }) {
    return _then(
      _$ReviewListResponseImpl(
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewEntity>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as ReviewPagination,
        ratingBreakdown: null == ratingBreakdown
            ? _value.ratingBreakdown
            : ratingBreakdown // ignore: cast_nullable_to_non_nullable
                  as RatingBreakdown,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewListResponseImpl extends _ReviewListResponse {
  const _$ReviewListResponseImpl({
    final List<ReviewEntity> reviews = const [],
    required this.pagination,
    @JsonKey(name: 'rating_breakdown') required this.ratingBreakdown,
  }) : _reviews = reviews,
       super._();

  factory _$ReviewListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewListResponseImplFromJson(json);

  final List<ReviewEntity> _reviews;
  @override
  @JsonKey()
  List<ReviewEntity> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final ReviewPagination pagination;
  @override
  @JsonKey(name: 'rating_breakdown')
  final RatingBreakdown ratingBreakdown;

  @override
  String toString() {
    return 'ReviewListResponse(reviews: $reviews, pagination: $pagination, ratingBreakdown: $ratingBreakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewListResponseImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.ratingBreakdown, ratingBreakdown) ||
                other.ratingBreakdown == ratingBreakdown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_reviews),
    pagination,
    ratingBreakdown,
  );

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewListResponseImplCopyWith<_$ReviewListResponseImpl> get copyWith =>
      __$$ReviewListResponseImplCopyWithImpl<_$ReviewListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewListResponseImplToJson(this);
  }
}

abstract class _ReviewListResponse extends ReviewListResponse {
  const factory _ReviewListResponse({
    final List<ReviewEntity> reviews,
    required final ReviewPagination pagination,
    @JsonKey(name: 'rating_breakdown')
    required final RatingBreakdown ratingBreakdown,
  }) = _$ReviewListResponseImpl;
  const _ReviewListResponse._() : super._();

  factory _ReviewListResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewListResponseImpl.fromJson;

  @override
  List<ReviewEntity> get reviews;
  @override
  ReviewPagination get pagination;
  @override
  @JsonKey(name: 'rating_breakdown')
  RatingBreakdown get ratingBreakdown;

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewListResponseImplCopyWith<_$ReviewListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewPagination _$ReviewPaginationFromJson(Map<String, dynamic> json) {
  return _ReviewPagination.fromJson(json);
}

/// @nodoc
mixin _$ReviewPagination {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_reviews')
  int get totalReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_next')
  bool get hasNext => throw _privateConstructorUsedError;

  /// Serializes this ReviewPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewPaginationCopyWith<ReviewPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPaginationCopyWith<$Res> {
  factory $ReviewPaginationCopyWith(
    ReviewPagination value,
    $Res Function(ReviewPagination) then,
  ) = _$ReviewPaginationCopyWithImpl<$Res, ReviewPagination>;
  @useResult
  $Res call({
    @JsonKey(name: 'current_page') int currentPage,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'total_reviews') int totalReviews,
    @JsonKey(name: 'has_next') bool hasNext,
  });
}

/// @nodoc
class _$ReviewPaginationCopyWithImpl<$Res, $Val extends ReviewPagination>
    implements $ReviewPaginationCopyWith<$Res> {
  _$ReviewPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalReviews = null,
    Object? hasNext = null,
  }) {
    return _then(
      _value.copyWith(
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
            totalReviews: null == totalReviews
                ? _value.totalReviews
                : totalReviews // ignore: cast_nullable_to_non_nullable
                      as int,
            hasNext: null == hasNext
                ? _value.hasNext
                : hasNext // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewPaginationImplCopyWith<$Res>
    implements $ReviewPaginationCopyWith<$Res> {
  factory _$$ReviewPaginationImplCopyWith(
    _$ReviewPaginationImpl value,
    $Res Function(_$ReviewPaginationImpl) then,
  ) = __$$ReviewPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'current_page') int currentPage,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'total_reviews') int totalReviews,
    @JsonKey(name: 'has_next') bool hasNext,
  });
}

/// @nodoc
class __$$ReviewPaginationImplCopyWithImpl<$Res>
    extends _$ReviewPaginationCopyWithImpl<$Res, _$ReviewPaginationImpl>
    implements _$$ReviewPaginationImplCopyWith<$Res> {
  __$$ReviewPaginationImplCopyWithImpl(
    _$ReviewPaginationImpl _value,
    $Res Function(_$ReviewPaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalReviews = null,
    Object? hasNext = null,
  }) {
    return _then(
      _$ReviewPaginationImpl(
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
        totalReviews: null == totalReviews
            ? _value.totalReviews
            : totalReviews // ignore: cast_nullable_to_non_nullable
                  as int,
        hasNext: null == hasNext
            ? _value.hasNext
            : hasNext // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewPaginationImpl extends _ReviewPagination {
  const _$ReviewPaginationImpl({
    @JsonKey(name: 'current_page') this.currentPage = 1,
    @JsonKey(name: 'total_pages') this.totalPages = 1,
    @JsonKey(name: 'total_reviews') this.totalReviews = 0,
    @JsonKey(name: 'has_next') this.hasNext = false,
  }) : super._();

  factory _$ReviewPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewPaginationImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_reviews')
  final int totalReviews;
  @override
  @JsonKey(name: 'has_next')
  final bool hasNext;

  @override
  String toString() {
    return 'ReviewPagination(currentPage: $currentPage, totalPages: $totalPages, totalReviews: $totalReviews, hasNext: $hasNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewPaginationImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, totalPages, totalReviews, hasNext);

  /// Create a copy of ReviewPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewPaginationImplCopyWith<_$ReviewPaginationImpl> get copyWith =>
      __$$ReviewPaginationImplCopyWithImpl<_$ReviewPaginationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewPaginationImplToJson(this);
  }
}

abstract class _ReviewPagination extends ReviewPagination {
  const factory _ReviewPagination({
    @JsonKey(name: 'current_page') final int currentPage,
    @JsonKey(name: 'total_pages') final int totalPages,
    @JsonKey(name: 'total_reviews') final int totalReviews,
    @JsonKey(name: 'has_next') final bool hasNext,
  }) = _$ReviewPaginationImpl;
  const _ReviewPagination._() : super._();

  factory _ReviewPagination.fromJson(Map<String, dynamic> json) =
      _$ReviewPaginationImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_reviews')
  int get totalReviews;
  @override
  @JsonKey(name: 'has_next')
  bool get hasNext;

  /// Create a copy of ReviewPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewPaginationImplCopyWith<_$ReviewPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingBreakdown _$RatingBreakdownFromJson(Map<String, dynamic> json) {
  return _RatingBreakdown.fromJson(json);
}

/// @nodoc
mixin _$RatingBreakdown {
  @JsonKey(name: 'average_rating')
  double get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_reviews')
  int get totalReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_counts')
  Map<String, int> get ratingCounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage_breakdown')
  Map<String, double> get percentageBreakdown =>
      throw _privateConstructorUsedError;

  /// Serializes this RatingBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingBreakdownCopyWith<RatingBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingBreakdownCopyWith<$Res> {
  factory $RatingBreakdownCopyWith(
    RatingBreakdown value,
    $Res Function(RatingBreakdown) then,
  ) = _$RatingBreakdownCopyWithImpl<$Res, RatingBreakdown>;
  @useResult
  $Res call({
    @JsonKey(name: 'average_rating') double averageRating,
    @JsonKey(name: 'total_reviews') int totalReviews,
    @JsonKey(name: 'rating_counts') Map<String, int> ratingCounts,
    @JsonKey(name: 'percentage_breakdown')
    Map<String, double> percentageBreakdown,
  });
}

/// @nodoc
class _$RatingBreakdownCopyWithImpl<$Res, $Val extends RatingBreakdown>
    implements $RatingBreakdownCopyWith<$Res> {
  _$RatingBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? ratingCounts = null,
    Object? percentageBreakdown = null,
  }) {
    return _then(
      _value.copyWith(
            averageRating: null == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double,
            totalReviews: null == totalReviews
                ? _value.totalReviews
                : totalReviews // ignore: cast_nullable_to_non_nullable
                      as int,
            ratingCounts: null == ratingCounts
                ? _value.ratingCounts
                : ratingCounts // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            percentageBreakdown: null == percentageBreakdown
                ? _value.percentageBreakdown
                : percentageBreakdown // ignore: cast_nullable_to_non_nullable
                      as Map<String, double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingBreakdownImplCopyWith<$Res>
    implements $RatingBreakdownCopyWith<$Res> {
  factory _$$RatingBreakdownImplCopyWith(
    _$RatingBreakdownImpl value,
    $Res Function(_$RatingBreakdownImpl) then,
  ) = __$$RatingBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'average_rating') double averageRating,
    @JsonKey(name: 'total_reviews') int totalReviews,
    @JsonKey(name: 'rating_counts') Map<String, int> ratingCounts,
    @JsonKey(name: 'percentage_breakdown')
    Map<String, double> percentageBreakdown,
  });
}

/// @nodoc
class __$$RatingBreakdownImplCopyWithImpl<$Res>
    extends _$RatingBreakdownCopyWithImpl<$Res, _$RatingBreakdownImpl>
    implements _$$RatingBreakdownImplCopyWith<$Res> {
  __$$RatingBreakdownImplCopyWithImpl(
    _$RatingBreakdownImpl _value,
    $Res Function(_$RatingBreakdownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? ratingCounts = null,
    Object? percentageBreakdown = null,
  }) {
    return _then(
      _$RatingBreakdownImpl(
        averageRating: null == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double,
        totalReviews: null == totalReviews
            ? _value.totalReviews
            : totalReviews // ignore: cast_nullable_to_non_nullable
                  as int,
        ratingCounts: null == ratingCounts
            ? _value._ratingCounts
            : ratingCounts // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        percentageBreakdown: null == percentageBreakdown
            ? _value._percentageBreakdown
            : percentageBreakdown // ignore: cast_nullable_to_non_nullable
                  as Map<String, double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingBreakdownImpl extends _RatingBreakdown {
  const _$RatingBreakdownImpl({
    @JsonKey(name: 'average_rating') this.averageRating = 0.0,
    @JsonKey(name: 'total_reviews') this.totalReviews = 0,
    @JsonKey(name: 'rating_counts')
    required final Map<String, int> ratingCounts,
    @JsonKey(name: 'percentage_breakdown')
    required final Map<String, double> percentageBreakdown,
  }) : _ratingCounts = ratingCounts,
       _percentageBreakdown = percentageBreakdown,
       super._();

  factory _$RatingBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingBreakdownImplFromJson(json);

  @override
  @JsonKey(name: 'average_rating')
  final double averageRating;
  @override
  @JsonKey(name: 'total_reviews')
  final int totalReviews;
  final Map<String, int> _ratingCounts;
  @override
  @JsonKey(name: 'rating_counts')
  Map<String, int> get ratingCounts {
    if (_ratingCounts is EqualUnmodifiableMapView) return _ratingCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ratingCounts);
  }

  final Map<String, double> _percentageBreakdown;
  @override
  @JsonKey(name: 'percentage_breakdown')
  Map<String, double> get percentageBreakdown {
    if (_percentageBreakdown is EqualUnmodifiableMapView)
      return _percentageBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_percentageBreakdown);
  }

  @override
  String toString() {
    return 'RatingBreakdown(averageRating: $averageRating, totalReviews: $totalReviews, ratingCounts: $ratingCounts, percentageBreakdown: $percentageBreakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingBreakdownImpl &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            const DeepCollectionEquality().equals(
              other._ratingCounts,
              _ratingCounts,
            ) &&
            const DeepCollectionEquality().equals(
              other._percentageBreakdown,
              _percentageBreakdown,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    averageRating,
    totalReviews,
    const DeepCollectionEquality().hash(_ratingCounts),
    const DeepCollectionEquality().hash(_percentageBreakdown),
  );

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingBreakdownImplCopyWith<_$RatingBreakdownImpl> get copyWith =>
      __$$RatingBreakdownImplCopyWithImpl<_$RatingBreakdownImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingBreakdownImplToJson(this);
  }
}

abstract class _RatingBreakdown extends RatingBreakdown {
  const factory _RatingBreakdown({
    @JsonKey(name: 'average_rating') final double averageRating,
    @JsonKey(name: 'total_reviews') final int totalReviews,
    @JsonKey(name: 'rating_counts')
    required final Map<String, int> ratingCounts,
    @JsonKey(name: 'percentage_breakdown')
    required final Map<String, double> percentageBreakdown,
  }) = _$RatingBreakdownImpl;
  const _RatingBreakdown._() : super._();

  factory _RatingBreakdown.fromJson(Map<String, dynamic> json) =
      _$RatingBreakdownImpl.fromJson;

  @override
  @JsonKey(name: 'average_rating')
  double get averageRating;
  @override
  @JsonKey(name: 'total_reviews')
  int get totalReviews;
  @override
  @JsonKey(name: 'rating_counts')
  Map<String, int> get ratingCounts;
  @override
  @JsonKey(name: 'percentage_breakdown')
  Map<String, double> get percentageBreakdown;

  /// Create a copy of RatingBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingBreakdownImplCopyWith<_$RatingBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductRatingStats _$ProductRatingStatsFromJson(Map<String, dynamic> json) {
  return _ProductRatingStats.fromJson(json);
}

/// @nodoc
mixin _$ProductRatingStats {
  @JsonKey(name: 'average_rating')
  double get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_reviews')
  int get totalReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_breakdown')
  Map<String, int> get ratingBreakdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage_breakdown')
  Map<String, double> get percentageBreakdown =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'recent_reviews')
  List<ReviewEntity> get recentReviews => throw _privateConstructorUsedError;

  /// Serializes this ProductRatingStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductRatingStatsCopyWith<ProductRatingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRatingStatsCopyWith<$Res> {
  factory $ProductRatingStatsCopyWith(
    ProductRatingStats value,
    $Res Function(ProductRatingStats) then,
  ) = _$ProductRatingStatsCopyWithImpl<$Res, ProductRatingStats>;
  @useResult
  $Res call({
    @JsonKey(name: 'average_rating') double averageRating,
    @JsonKey(name: 'total_reviews') int totalReviews,
    @JsonKey(name: 'rating_breakdown') Map<String, int> ratingBreakdown,
    @JsonKey(name: 'percentage_breakdown')
    Map<String, double> percentageBreakdown,
    @JsonKey(name: 'recent_reviews') List<ReviewEntity> recentReviews,
  });
}

/// @nodoc
class _$ProductRatingStatsCopyWithImpl<$Res, $Val extends ProductRatingStats>
    implements $ProductRatingStatsCopyWith<$Res> {
  _$ProductRatingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? ratingBreakdown = null,
    Object? percentageBreakdown = null,
    Object? recentReviews = null,
  }) {
    return _then(
      _value.copyWith(
            averageRating: null == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double,
            totalReviews: null == totalReviews
                ? _value.totalReviews
                : totalReviews // ignore: cast_nullable_to_non_nullable
                      as int,
            ratingBreakdown: null == ratingBreakdown
                ? _value.ratingBreakdown
                : ratingBreakdown // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            percentageBreakdown: null == percentageBreakdown
                ? _value.percentageBreakdown
                : percentageBreakdown // ignore: cast_nullable_to_non_nullable
                      as Map<String, double>,
            recentReviews: null == recentReviews
                ? _value.recentReviews
                : recentReviews // ignore: cast_nullable_to_non_nullable
                      as List<ReviewEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductRatingStatsImplCopyWith<$Res>
    implements $ProductRatingStatsCopyWith<$Res> {
  factory _$$ProductRatingStatsImplCopyWith(
    _$ProductRatingStatsImpl value,
    $Res Function(_$ProductRatingStatsImpl) then,
  ) = __$$ProductRatingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'average_rating') double averageRating,
    @JsonKey(name: 'total_reviews') int totalReviews,
    @JsonKey(name: 'rating_breakdown') Map<String, int> ratingBreakdown,
    @JsonKey(name: 'percentage_breakdown')
    Map<String, double> percentageBreakdown,
    @JsonKey(name: 'recent_reviews') List<ReviewEntity> recentReviews,
  });
}

/// @nodoc
class __$$ProductRatingStatsImplCopyWithImpl<$Res>
    extends _$ProductRatingStatsCopyWithImpl<$Res, _$ProductRatingStatsImpl>
    implements _$$ProductRatingStatsImplCopyWith<$Res> {
  __$$ProductRatingStatsImplCopyWithImpl(
    _$ProductRatingStatsImpl _value,
    $Res Function(_$ProductRatingStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? ratingBreakdown = null,
    Object? percentageBreakdown = null,
    Object? recentReviews = null,
  }) {
    return _then(
      _$ProductRatingStatsImpl(
        averageRating: null == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double,
        totalReviews: null == totalReviews
            ? _value.totalReviews
            : totalReviews // ignore: cast_nullable_to_non_nullable
                  as int,
        ratingBreakdown: null == ratingBreakdown
            ? _value._ratingBreakdown
            : ratingBreakdown // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        percentageBreakdown: null == percentageBreakdown
            ? _value._percentageBreakdown
            : percentageBreakdown // ignore: cast_nullable_to_non_nullable
                  as Map<String, double>,
        recentReviews: null == recentReviews
            ? _value._recentReviews
            : recentReviews // ignore: cast_nullable_to_non_nullable
                  as List<ReviewEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRatingStatsImpl extends _ProductRatingStats {
  const _$ProductRatingStatsImpl({
    @JsonKey(name: 'average_rating') this.averageRating = 0.0,
    @JsonKey(name: 'total_reviews') this.totalReviews = 0,
    @JsonKey(name: 'rating_breakdown')
    required final Map<String, int> ratingBreakdown,
    @JsonKey(name: 'percentage_breakdown')
    required final Map<String, double> percentageBreakdown,
    @JsonKey(name: 'recent_reviews')
    final List<ReviewEntity> recentReviews = const [],
  }) : _ratingBreakdown = ratingBreakdown,
       _percentageBreakdown = percentageBreakdown,
       _recentReviews = recentReviews,
       super._();

  factory _$ProductRatingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRatingStatsImplFromJson(json);

  @override
  @JsonKey(name: 'average_rating')
  final double averageRating;
  @override
  @JsonKey(name: 'total_reviews')
  final int totalReviews;
  final Map<String, int> _ratingBreakdown;
  @override
  @JsonKey(name: 'rating_breakdown')
  Map<String, int> get ratingBreakdown {
    if (_ratingBreakdown is EqualUnmodifiableMapView) return _ratingBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ratingBreakdown);
  }

  final Map<String, double> _percentageBreakdown;
  @override
  @JsonKey(name: 'percentage_breakdown')
  Map<String, double> get percentageBreakdown {
    if (_percentageBreakdown is EqualUnmodifiableMapView)
      return _percentageBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_percentageBreakdown);
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
  String toString() {
    return 'ProductRatingStats(averageRating: $averageRating, totalReviews: $totalReviews, ratingBreakdown: $ratingBreakdown, percentageBreakdown: $percentageBreakdown, recentReviews: $recentReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRatingStatsImpl &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            const DeepCollectionEquality().equals(
              other._ratingBreakdown,
              _ratingBreakdown,
            ) &&
            const DeepCollectionEquality().equals(
              other._percentageBreakdown,
              _percentageBreakdown,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentReviews,
              _recentReviews,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    averageRating,
    totalReviews,
    const DeepCollectionEquality().hash(_ratingBreakdown),
    const DeepCollectionEquality().hash(_percentageBreakdown),
    const DeepCollectionEquality().hash(_recentReviews),
  );

  /// Create a copy of ProductRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRatingStatsImplCopyWith<_$ProductRatingStatsImpl> get copyWith =>
      __$$ProductRatingStatsImplCopyWithImpl<_$ProductRatingStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRatingStatsImplToJson(this);
  }
}

abstract class _ProductRatingStats extends ProductRatingStats {
  const factory _ProductRatingStats({
    @JsonKey(name: 'average_rating') final double averageRating,
    @JsonKey(name: 'total_reviews') final int totalReviews,
    @JsonKey(name: 'rating_breakdown')
    required final Map<String, int> ratingBreakdown,
    @JsonKey(name: 'percentage_breakdown')
    required final Map<String, double> percentageBreakdown,
    @JsonKey(name: 'recent_reviews') final List<ReviewEntity> recentReviews,
  }) = _$ProductRatingStatsImpl;
  const _ProductRatingStats._() : super._();

  factory _ProductRatingStats.fromJson(Map<String, dynamic> json) =
      _$ProductRatingStatsImpl.fromJson;

  @override
  @JsonKey(name: 'average_rating')
  double get averageRating;
  @override
  @JsonKey(name: 'total_reviews')
  int get totalReviews;
  @override
  @JsonKey(name: 'rating_breakdown')
  Map<String, int> get ratingBreakdown;
  @override
  @JsonKey(name: 'percentage_breakdown')
  Map<String, double> get percentageBreakdown;
  @override
  @JsonKey(name: 'recent_reviews')
  List<ReviewEntity> get recentReviews;

  /// Create a copy of ProductRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductRatingStatsImplCopyWith<_$ProductRatingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
