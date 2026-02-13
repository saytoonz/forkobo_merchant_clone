// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policies_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PoliciesEntity _$PoliciesEntityFromJson(Map<String, dynamic> json) {
  return _PoliciesEntity.fromJson(json);
}

/// @nodoc
mixin _$PoliciesEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'effective_date')
  String? get effectiveDate => throw _privateConstructorUsedError;

  /// Serializes this PoliciesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PoliciesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PoliciesEntityCopyWith<PoliciesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliciesEntityCopyWith<$Res> {
  factory $PoliciesEntityCopyWith(
    PoliciesEntity value,
    $Res Function(PoliciesEntity) then,
  ) = _$PoliciesEntityCopyWithImpl<$Res, PoliciesEntity>;
  @useResult
  $Res call({
    String? id,
    String? title,
    String? content,
    String? version,
    @JsonKey(name: 'effective_date') String? effectiveDate,
  });
}

/// @nodoc
class _$PoliciesEntityCopyWithImpl<$Res, $Val extends PoliciesEntity>
    implements $PoliciesEntityCopyWith<$Res> {
  _$PoliciesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PoliciesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? version = freezed,
    Object? effectiveDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
            effectiveDate: freezed == effectiveDate
                ? _value.effectiveDate
                : effectiveDate // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PoliciesEntityImplCopyWith<$Res>
    implements $PoliciesEntityCopyWith<$Res> {
  factory _$$PoliciesEntityImplCopyWith(
    _$PoliciesEntityImpl value,
    $Res Function(_$PoliciesEntityImpl) then,
  ) = __$$PoliciesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? title,
    String? content,
    String? version,
    @JsonKey(name: 'effective_date') String? effectiveDate,
  });
}

/// @nodoc
class __$$PoliciesEntityImplCopyWithImpl<$Res>
    extends _$PoliciesEntityCopyWithImpl<$Res, _$PoliciesEntityImpl>
    implements _$$PoliciesEntityImplCopyWith<$Res> {
  __$$PoliciesEntityImplCopyWithImpl(
    _$PoliciesEntityImpl _value,
    $Res Function(_$PoliciesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PoliciesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? version = freezed,
    Object? effectiveDate = freezed,
  }) {
    return _then(
      _$PoliciesEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
        effectiveDate: freezed == effectiveDate
            ? _value.effectiveDate
            : effectiveDate // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PoliciesEntityImpl extends _PoliciesEntity {
  const _$PoliciesEntityImpl({
    this.id,
    this.title,
    this.content,
    this.version,
    @JsonKey(name: 'effective_date') this.effectiveDate,
  }) : super._();

  factory _$PoliciesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PoliciesEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? version;
  @override
  @JsonKey(name: 'effective_date')
  final String? effectiveDate;

  @override
  String toString() {
    return 'PoliciesEntity(id: $id, title: $title, content: $content, version: $version, effectiveDate: $effectiveDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliciesEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, version, effectiveDate);

  /// Create a copy of PoliciesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliciesEntityImplCopyWith<_$PoliciesEntityImpl> get copyWith =>
      __$$PoliciesEntityImplCopyWithImpl<_$PoliciesEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PoliciesEntityImplToJson(this);
  }
}

abstract class _PoliciesEntity extends PoliciesEntity {
  const factory _PoliciesEntity({
    final String? id,
    final String? title,
    final String? content,
    final String? version,
    @JsonKey(name: 'effective_date') final String? effectiveDate,
  }) = _$PoliciesEntityImpl;
  const _PoliciesEntity._() : super._();

  factory _PoliciesEntity.fromJson(Map<String, dynamic> json) =
      _$PoliciesEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get version;
  @override
  @JsonKey(name: 'effective_date')
  String? get effectiveDate;

  /// Create a copy of PoliciesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PoliciesEntityImplCopyWith<_$PoliciesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
