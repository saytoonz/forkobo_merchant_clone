// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddressUiState _$AddressUiStateFromJson(Map<String, dynamic> json) {
  return _AddressUiState.fromJson(json);
}

/// @nodoc
mixin _$AddressUiState {
  List<UserAddressEntity> get addresses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isCreating => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  bool get isLoadingShippingMethods => throw _privateConstructorUsedError;
  List<ShippingMethodEntity> get shippingMethods =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get shippingMethodsError => throw _privateConstructorUsedError;
  UserAddressEntity? get selectedAddress => throw _privateConstructorUsedError;
  ShippingMethodEntity? get selectedShippingMethod =>
      throw _privateConstructorUsedError;

  /// Serializes this AddressUiState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressUiStateCopyWith<AddressUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressUiStateCopyWith<$Res> {
  factory $AddressUiStateCopyWith(
    AddressUiState value,
    $Res Function(AddressUiState) then,
  ) = _$AddressUiStateCopyWithImpl<$Res, AddressUiState>;
  @useResult
  $Res call({
    List<UserAddressEntity> addresses,
    bool isLoading,
    bool isCreating,
    bool isUpdating,
    bool isDeleting,
    bool isLoadingShippingMethods,
    List<ShippingMethodEntity> shippingMethods,
    String? error,
    String? shippingMethodsError,
    UserAddressEntity? selectedAddress,
    ShippingMethodEntity? selectedShippingMethod,
  });

  $UserAddressEntityCopyWith<$Res>? get selectedAddress;
  $ShippingMethodEntityCopyWith<$Res>? get selectedShippingMethod;
}

/// @nodoc
class _$AddressUiStateCopyWithImpl<$Res, $Val extends AddressUiState>
    implements $AddressUiStateCopyWith<$Res> {
  _$AddressUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
    Object? isLoading = null,
    Object? isCreating = null,
    Object? isUpdating = null,
    Object? isDeleting = null,
    Object? isLoadingShippingMethods = null,
    Object? shippingMethods = null,
    Object? error = freezed,
    Object? shippingMethodsError = freezed,
    Object? selectedAddress = freezed,
    Object? selectedShippingMethod = freezed,
  }) {
    return _then(
      _value.copyWith(
            addresses: null == addresses
                ? _value.addresses
                : addresses // ignore: cast_nullable_to_non_nullable
                      as List<UserAddressEntity>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isCreating: null == isCreating
                ? _value.isCreating
                : isCreating // ignore: cast_nullable_to_non_nullable
                      as bool,
            isUpdating: null == isUpdating
                ? _value.isUpdating
                : isUpdating // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDeleting: null == isDeleting
                ? _value.isDeleting
                : isDeleting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingShippingMethods: null == isLoadingShippingMethods
                ? _value.isLoadingShippingMethods
                : isLoadingShippingMethods // ignore: cast_nullable_to_non_nullable
                      as bool,
            shippingMethods: null == shippingMethods
                ? _value.shippingMethods
                : shippingMethods // ignore: cast_nullable_to_non_nullable
                      as List<ShippingMethodEntity>,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingMethodsError: freezed == shippingMethodsError
                ? _value.shippingMethodsError
                : shippingMethodsError // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedAddress: freezed == selectedAddress
                ? _value.selectedAddress
                : selectedAddress // ignore: cast_nullable_to_non_nullable
                      as UserAddressEntity?,
            selectedShippingMethod: freezed == selectedShippingMethod
                ? _value.selectedShippingMethod
                : selectedShippingMethod // ignore: cast_nullable_to_non_nullable
                      as ShippingMethodEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAddressEntityCopyWith<$Res>? get selectedAddress {
    if (_value.selectedAddress == null) {
      return null;
    }

    return $UserAddressEntityCopyWith<$Res>(_value.selectedAddress!, (value) {
      return _then(_value.copyWith(selectedAddress: value) as $Val);
    });
  }

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingMethodEntityCopyWith<$Res>? get selectedShippingMethod {
    if (_value.selectedShippingMethod == null) {
      return null;
    }

    return $ShippingMethodEntityCopyWith<$Res>(_value.selectedShippingMethod!, (
      value,
    ) {
      return _then(_value.copyWith(selectedShippingMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressUiStateImplCopyWith<$Res>
    implements $AddressUiStateCopyWith<$Res> {
  factory _$$AddressUiStateImplCopyWith(
    _$AddressUiStateImpl value,
    $Res Function(_$AddressUiStateImpl) then,
  ) = __$$AddressUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<UserAddressEntity> addresses,
    bool isLoading,
    bool isCreating,
    bool isUpdating,
    bool isDeleting,
    bool isLoadingShippingMethods,
    List<ShippingMethodEntity> shippingMethods,
    String? error,
    String? shippingMethodsError,
    UserAddressEntity? selectedAddress,
    ShippingMethodEntity? selectedShippingMethod,
  });

  @override
  $UserAddressEntityCopyWith<$Res>? get selectedAddress;
  @override
  $ShippingMethodEntityCopyWith<$Res>? get selectedShippingMethod;
}

/// @nodoc
class __$$AddressUiStateImplCopyWithImpl<$Res>
    extends _$AddressUiStateCopyWithImpl<$Res, _$AddressUiStateImpl>
    implements _$$AddressUiStateImplCopyWith<$Res> {
  __$$AddressUiStateImplCopyWithImpl(
    _$AddressUiStateImpl _value,
    $Res Function(_$AddressUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
    Object? isLoading = null,
    Object? isCreating = null,
    Object? isUpdating = null,
    Object? isDeleting = null,
    Object? isLoadingShippingMethods = null,
    Object? shippingMethods = null,
    Object? error = freezed,
    Object? shippingMethodsError = freezed,
    Object? selectedAddress = freezed,
    Object? selectedShippingMethod = freezed,
  }) {
    return _then(
      _$AddressUiStateImpl(
        addresses: null == addresses
            ? _value._addresses
            : addresses // ignore: cast_nullable_to_non_nullable
                  as List<UserAddressEntity>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isCreating: null == isCreating
            ? _value.isCreating
            : isCreating // ignore: cast_nullable_to_non_nullable
                  as bool,
        isUpdating: null == isUpdating
            ? _value.isUpdating
            : isUpdating // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDeleting: null == isDeleting
            ? _value.isDeleting
            : isDeleting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingShippingMethods: null == isLoadingShippingMethods
            ? _value.isLoadingShippingMethods
            : isLoadingShippingMethods // ignore: cast_nullable_to_non_nullable
                  as bool,
        shippingMethods: null == shippingMethods
            ? _value._shippingMethods
            : shippingMethods // ignore: cast_nullable_to_non_nullable
                  as List<ShippingMethodEntity>,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingMethodsError: freezed == shippingMethodsError
            ? _value.shippingMethodsError
            : shippingMethodsError // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedAddress: freezed == selectedAddress
            ? _value.selectedAddress
            : selectedAddress // ignore: cast_nullable_to_non_nullable
                  as UserAddressEntity?,
        selectedShippingMethod: freezed == selectedShippingMethod
            ? _value.selectedShippingMethod
            : selectedShippingMethod // ignore: cast_nullable_to_non_nullable
                  as ShippingMethodEntity?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressUiStateImpl extends _AddressUiState {
  const _$AddressUiStateImpl({
    final List<UserAddressEntity> addresses = const [],
    this.isLoading = false,
    this.isCreating = false,
    this.isUpdating = false,
    this.isDeleting = false,
    this.isLoadingShippingMethods = false,
    final List<ShippingMethodEntity> shippingMethods = const [],
    this.error,
    this.shippingMethodsError,
    this.selectedAddress,
    this.selectedShippingMethod,
  }) : _addresses = addresses,
       _shippingMethods = shippingMethods,
       super._();

  factory _$AddressUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressUiStateImplFromJson(json);

  final List<UserAddressEntity> _addresses;
  @override
  @JsonKey()
  List<UserAddressEntity> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isCreating;
  @override
  @JsonKey()
  final bool isUpdating;
  @override
  @JsonKey()
  final bool isDeleting;
  @override
  @JsonKey()
  final bool isLoadingShippingMethods;
  final List<ShippingMethodEntity> _shippingMethods;
  @override
  @JsonKey()
  List<ShippingMethodEntity> get shippingMethods {
    if (_shippingMethods is EqualUnmodifiableListView) return _shippingMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippingMethods);
  }

  @override
  final String? error;
  @override
  final String? shippingMethodsError;
  @override
  final UserAddressEntity? selectedAddress;
  @override
  final ShippingMethodEntity? selectedShippingMethod;

  @override
  String toString() {
    return 'AddressUiState(addresses: $addresses, isLoading: $isLoading, isCreating: $isCreating, isUpdating: $isUpdating, isDeleting: $isDeleting, isLoadingShippingMethods: $isLoadingShippingMethods, shippingMethods: $shippingMethods, error: $error, shippingMethodsError: $shippingMethodsError, selectedAddress: $selectedAddress, selectedShippingMethod: $selectedShippingMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressUiStateImpl &&
            const DeepCollectionEquality().equals(
              other._addresses,
              _addresses,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isCreating, isCreating) ||
                other.isCreating == isCreating) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(
                  other.isLoadingShippingMethods,
                  isLoadingShippingMethods,
                ) ||
                other.isLoadingShippingMethods == isLoadingShippingMethods) &&
            const DeepCollectionEquality().equals(
              other._shippingMethods,
              _shippingMethods,
            ) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.shippingMethodsError, shippingMethodsError) ||
                other.shippingMethodsError == shippingMethodsError) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.selectedShippingMethod, selectedShippingMethod) ||
                other.selectedShippingMethod == selectedShippingMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_addresses),
    isLoading,
    isCreating,
    isUpdating,
    isDeleting,
    isLoadingShippingMethods,
    const DeepCollectionEquality().hash(_shippingMethods),
    error,
    shippingMethodsError,
    selectedAddress,
    selectedShippingMethod,
  );

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressUiStateImplCopyWith<_$AddressUiStateImpl> get copyWith =>
      __$$AddressUiStateImplCopyWithImpl<_$AddressUiStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressUiStateImplToJson(this);
  }
}

abstract class _AddressUiState extends AddressUiState {
  const factory _AddressUiState({
    final List<UserAddressEntity> addresses,
    final bool isLoading,
    final bool isCreating,
    final bool isUpdating,
    final bool isDeleting,
    final bool isLoadingShippingMethods,
    final List<ShippingMethodEntity> shippingMethods,
    final String? error,
    final String? shippingMethodsError,
    final UserAddressEntity? selectedAddress,
    final ShippingMethodEntity? selectedShippingMethod,
  }) = _$AddressUiStateImpl;
  const _AddressUiState._() : super._();

  factory _AddressUiState.fromJson(Map<String, dynamic> json) =
      _$AddressUiStateImpl.fromJson;

  @override
  List<UserAddressEntity> get addresses;
  @override
  bool get isLoading;
  @override
  bool get isCreating;
  @override
  bool get isUpdating;
  @override
  bool get isDeleting;
  @override
  bool get isLoadingShippingMethods;
  @override
  List<ShippingMethodEntity> get shippingMethods;
  @override
  String? get error;
  @override
  String? get shippingMethodsError;
  @override
  UserAddressEntity? get selectedAddress;
  @override
  ShippingMethodEntity? get selectedShippingMethod;

  /// Create a copy of AddressUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressUiStateImplCopyWith<_$AddressUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
