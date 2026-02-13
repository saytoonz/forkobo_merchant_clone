// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appuser_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppUserUIState {
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  AppUser? get appUser => throw _privateConstructorUsedError;

  /// Create a copy of AppUserUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppUserUIStateCopyWith<AppUserUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserUIStateCopyWith<$Res> {
  factory $AppUserUIStateCopyWith(
    AppUserUIState value,
    $Res Function(AppUserUIState) then,
  ) = _$AppUserUIStateCopyWithImpl<$Res, AppUserUIState>;
  @useResult
  $Res call({bool isLoggedIn, bool isLoading, String error, AppUser? appUser});

  $AppUserCopyWith<$Res>? get appUser;
}

/// @nodoc
class _$AppUserUIStateCopyWithImpl<$Res, $Val extends AppUserUIState>
    implements $AppUserUIStateCopyWith<$Res> {
  _$AppUserUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppUserUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? isLoading = null,
    Object? error = null,
    Object? appUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoggedIn: null == isLoggedIn
                ? _value.isLoggedIn
                : isLoggedIn // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String,
            appUser: freezed == appUser
                ? _value.appUser
                : appUser // ignore: cast_nullable_to_non_nullable
                      as AppUser?,
          )
          as $Val,
    );
  }

  /// Create a copy of AppUserUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get appUser {
    if (_value.appUser == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.appUser!, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUserUIStateImplCopyWith<$Res>
    implements $AppUserUIStateCopyWith<$Res> {
  factory _$$AppUserUIStateImplCopyWith(
    _$AppUserUIStateImpl value,
    $Res Function(_$AppUserUIStateImpl) then,
  ) = __$$AppUserUIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggedIn, bool isLoading, String error, AppUser? appUser});

  @override
  $AppUserCopyWith<$Res>? get appUser;
}

/// @nodoc
class __$$AppUserUIStateImplCopyWithImpl<$Res>
    extends _$AppUserUIStateCopyWithImpl<$Res, _$AppUserUIStateImpl>
    implements _$$AppUserUIStateImplCopyWith<$Res> {
  __$$AppUserUIStateImplCopyWithImpl(
    _$AppUserUIStateImpl _value,
    $Res Function(_$AppUserUIStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppUserUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? isLoading = null,
    Object? error = null,
    Object? appUser = freezed,
  }) {
    return _then(
      _$AppUserUIStateImpl(
        isLoggedIn: null == isLoggedIn
            ? _value.isLoggedIn
            : isLoggedIn // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String,
        appUser: freezed == appUser
            ? _value.appUser
            : appUser // ignore: cast_nullable_to_non_nullable
                  as AppUser?,
      ),
    );
  }
}

/// @nodoc

class _$AppUserUIStateImpl extends _AppUserUIState {
  const _$AppUserUIStateImpl({
    this.isLoggedIn = false,
    this.isLoading = false,
    this.error = '',
    this.appUser,
  }) : super._();

  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
  @override
  final AppUser? appUser;

  @override
  String toString() {
    return 'AppUserUIState(isLoggedIn: $isLoggedIn, isLoading: $isLoading, error: $error, appUser: $appUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserUIStateImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoggedIn, isLoading, error, appUser);

  /// Create a copy of AppUserUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserUIStateImplCopyWith<_$AppUserUIStateImpl> get copyWith =>
      __$$AppUserUIStateImplCopyWithImpl<_$AppUserUIStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AppUserUIState extends AppUserUIState {
  const factory _AppUserUIState({
    final bool isLoggedIn,
    final bool isLoading,
    final String error,
    final AppUser? appUser,
  }) = _$AppUserUIStateImpl;
  const _AppUserUIState._() : super._();

  @override
  bool get isLoggedIn;
  @override
  bool get isLoading;
  @override
  String get error;
  @override
  AppUser? get appUser;

  /// Create a copy of AppUserUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppUserUIStateImplCopyWith<_$AppUserUIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
