// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DashboardUIState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  DashboardResponse? get data => throw _privateConstructorUsedError;
  String get selectedRange => throw _privateConstructorUsedError;

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardUIStateCopyWith<DashboardUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardUIStateCopyWith<$Res> {
  factory $DashboardUIStateCopyWith(
    DashboardUIState value,
    $Res Function(DashboardUIState) then,
  ) = _$DashboardUIStateCopyWithImpl<$Res, DashboardUIState>;
  @useResult
  $Res call({
    bool isLoading,
    String error,
    DashboardResponse? data,
    String selectedRange,
  });

  $DashboardResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$DashboardUIStateCopyWithImpl<$Res, $Val extends DashboardUIState>
    implements $DashboardUIStateCopyWith<$Res> {
  _$DashboardUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? data = freezed,
    Object? selectedRange = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as DashboardResponse?,
            selectedRange: null == selectedRange
                ? _value.selectedRange
                : selectedRange // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DashboardResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardUIStateImplCopyWith<$Res>
    implements $DashboardUIStateCopyWith<$Res> {
  factory _$$DashboardUIStateImplCopyWith(
    _$DashboardUIStateImpl value,
    $Res Function(_$DashboardUIStateImpl) then,
  ) = __$$DashboardUIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    String error,
    DashboardResponse? data,
    String selectedRange,
  });

  @override
  $DashboardResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DashboardUIStateImplCopyWithImpl<$Res>
    extends _$DashboardUIStateCopyWithImpl<$Res, _$DashboardUIStateImpl>
    implements _$$DashboardUIStateImplCopyWith<$Res> {
  __$$DashboardUIStateImplCopyWithImpl(
    _$DashboardUIStateImpl _value,
    $Res Function(_$DashboardUIStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? data = freezed,
    Object? selectedRange = null,
  }) {
    return _then(
      _$DashboardUIStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as DashboardResponse?,
        selectedRange: null == selectedRange
            ? _value.selectedRange
            : selectedRange // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DashboardUIStateImpl extends _DashboardUIState {
  const _$DashboardUIStateImpl({
    this.isLoading = false,
    this.error = '',
    this.data,
    this.selectedRange = '1w',
  }) : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
  @override
  final DashboardResponse? data;
  @override
  @JsonKey()
  final String selectedRange;

  @override
  String toString() {
    return 'DashboardUIState(isLoading: $isLoading, error: $error, data: $data, selectedRange: $selectedRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardUIStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, data, selectedRange);

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardUIStateImplCopyWith<_$DashboardUIStateImpl> get copyWith =>
      __$$DashboardUIStateImplCopyWithImpl<_$DashboardUIStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DashboardUIState extends DashboardUIState {
  const factory _DashboardUIState({
    final bool isLoading,
    final String error,
    final DashboardResponse? data,
    final String selectedRange,
  }) = _$DashboardUIStateImpl;
  const _DashboardUIState._() : super._();

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  DashboardResponse? get data;
  @override
  String get selectedRange;

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardUIStateImplCopyWith<_$DashboardUIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
