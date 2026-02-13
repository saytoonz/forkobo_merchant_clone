// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) {
  return _DashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardResponse {
  DashboardSummary get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_chart')
  SalesChart get salesChart => throw _privateConstructorUsedError;
  @JsonKey(name: 'operational_metrics')
  OperationalMetrics get operationalMetrics =>
      throw _privateConstructorUsedError;

  /// Serializes this DashboardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardResponseCopyWith<DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResponseCopyWith<$Res> {
  factory $DashboardResponseCopyWith(
    DashboardResponse value,
    $Res Function(DashboardResponse) then,
  ) = _$DashboardResponseCopyWithImpl<$Res, DashboardResponse>;
  @useResult
  $Res call({
    DashboardSummary summary,
    @JsonKey(name: 'sales_chart') SalesChart salesChart,
    @JsonKey(name: 'operational_metrics') OperationalMetrics operationalMetrics,
  });

  $DashboardSummaryCopyWith<$Res> get summary;
  $SalesChartCopyWith<$Res> get salesChart;
  $OperationalMetricsCopyWith<$Res> get operationalMetrics;
}

/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res, $Val extends DashboardResponse>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? salesChart = null,
    Object? operationalMetrics = null,
  }) {
    return _then(
      _value.copyWith(
            summary: null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as DashboardSummary,
            salesChart: null == salesChart
                ? _value.salesChart
                : salesChart // ignore: cast_nullable_to_non_nullable
                      as SalesChart,
            operationalMetrics: null == operationalMetrics
                ? _value.operationalMetrics
                : operationalMetrics // ignore: cast_nullable_to_non_nullable
                      as OperationalMetrics,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardSummaryCopyWith<$Res> get summary {
    return $DashboardSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalesChartCopyWith<$Res> get salesChart {
    return $SalesChartCopyWith<$Res>(_value.salesChart, (value) {
      return _then(_value.copyWith(salesChart: value) as $Val);
    });
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OperationalMetricsCopyWith<$Res> get operationalMetrics {
    return $OperationalMetricsCopyWith<$Res>(_value.operationalMetrics, (
      value,
    ) {
      return _then(_value.copyWith(operationalMetrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardResponseImplCopyWith<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  factory _$$DashboardResponseImplCopyWith(
    _$DashboardResponseImpl value,
    $Res Function(_$DashboardResponseImpl) then,
  ) = __$$DashboardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DashboardSummary summary,
    @JsonKey(name: 'sales_chart') SalesChart salesChart,
    @JsonKey(name: 'operational_metrics') OperationalMetrics operationalMetrics,
  });

  @override
  $DashboardSummaryCopyWith<$Res> get summary;
  @override
  $SalesChartCopyWith<$Res> get salesChart;
  @override
  $OperationalMetricsCopyWith<$Res> get operationalMetrics;
}

/// @nodoc
class __$$DashboardResponseImplCopyWithImpl<$Res>
    extends _$DashboardResponseCopyWithImpl<$Res, _$DashboardResponseImpl>
    implements _$$DashboardResponseImplCopyWith<$Res> {
  __$$DashboardResponseImplCopyWithImpl(
    _$DashboardResponseImpl _value,
    $Res Function(_$DashboardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? salesChart = null,
    Object? operationalMetrics = null,
  }) {
    return _then(
      _$DashboardResponseImpl(
        summary: null == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as DashboardSummary,
        salesChart: null == salesChart
            ? _value.salesChart
            : salesChart // ignore: cast_nullable_to_non_nullable
                  as SalesChart,
        operationalMetrics: null == operationalMetrics
            ? _value.operationalMetrics
            : operationalMetrics // ignore: cast_nullable_to_non_nullable
                  as OperationalMetrics,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardResponseImpl extends _DashboardResponse {
  const _$DashboardResponseImpl({
    required this.summary,
    @JsonKey(name: 'sales_chart') required this.salesChart,
    @JsonKey(name: 'operational_metrics') required this.operationalMetrics,
  }) : super._();

  factory _$DashboardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardResponseImplFromJson(json);

  @override
  final DashboardSummary summary;
  @override
  @JsonKey(name: 'sales_chart')
  final SalesChart salesChart;
  @override
  @JsonKey(name: 'operational_metrics')
  final OperationalMetrics operationalMetrics;

  @override
  String toString() {
    return 'DashboardResponse(summary: $summary, salesChart: $salesChart, operationalMetrics: $operationalMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardResponseImpl &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.salesChart, salesChart) ||
                other.salesChart == salesChart) &&
            (identical(other.operationalMetrics, operationalMetrics) ||
                other.operationalMetrics == operationalMetrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, summary, salesChart, operationalMetrics);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      __$$DashboardResponseImplCopyWithImpl<_$DashboardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardResponseImplToJson(this);
  }
}

abstract class _DashboardResponse extends DashboardResponse {
  const factory _DashboardResponse({
    required final DashboardSummary summary,
    @JsonKey(name: 'sales_chart') required final SalesChart salesChart,
    @JsonKey(name: 'operational_metrics')
    required final OperationalMetrics operationalMetrics,
  }) = _$DashboardResponseImpl;
  const _DashboardResponse._() : super._();

  factory _DashboardResponse.fromJson(Map<String, dynamic> json) =
      _$DashboardResponseImpl.fromJson;

  @override
  DashboardSummary get summary;
  @override
  @JsonKey(name: 'sales_chart')
  SalesChart get salesChart;
  @override
  @JsonKey(name: 'operational_metrics')
  OperationalMetrics get operationalMetrics;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardSummary _$DashboardSummaryFromJson(Map<String, dynamic> json) {
  return _DashboardSummary.fromJson(json);
}

/// @nodoc
mixin _$DashboardSummary {
  @JsonKey(name: 'total_revenue')
  MoneyStat get totalRevenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_orders')
  OrderStat get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'gross_profit')
  MoneyStat get grossProfit => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders_total_amount')
  MoneyStat get ordersTotalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_payout')
  NextPayout? get nextPayout => throw _privateConstructorUsedError;

  /// Serializes this DashboardSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardSummaryCopyWith<DashboardSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardSummaryCopyWith<$Res> {
  factory $DashboardSummaryCopyWith(
    DashboardSummary value,
    $Res Function(DashboardSummary) then,
  ) = _$DashboardSummaryCopyWithImpl<$Res, DashboardSummary>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_revenue') MoneyStat totalRevenue,
    @JsonKey(name: 'total_orders') OrderStat totalOrders,
    @JsonKey(name: 'gross_profit') MoneyStat grossProfit,
    @JsonKey(name: 'orders_total_amount') MoneyStat ordersTotalAmount,
    @JsonKey(name: 'next_payout') NextPayout? nextPayout,
  });

  $MoneyStatCopyWith<$Res> get totalRevenue;
  $OrderStatCopyWith<$Res> get totalOrders;
  $MoneyStatCopyWith<$Res> get grossProfit;
  $MoneyStatCopyWith<$Res> get ordersTotalAmount;
  $NextPayoutCopyWith<$Res>? get nextPayout;
}

/// @nodoc
class _$DashboardSummaryCopyWithImpl<$Res, $Val extends DashboardSummary>
    implements $DashboardSummaryCopyWith<$Res> {
  _$DashboardSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRevenue = null,
    Object? totalOrders = null,
    Object? grossProfit = null,
    Object? ordersTotalAmount = null,
    Object? nextPayout = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalRevenue: null == totalRevenue
                ? _value.totalRevenue
                : totalRevenue // ignore: cast_nullable_to_non_nullable
                      as MoneyStat,
            totalOrders: null == totalOrders
                ? _value.totalOrders
                : totalOrders // ignore: cast_nullable_to_non_nullable
                      as OrderStat,
            grossProfit: null == grossProfit
                ? _value.grossProfit
                : grossProfit // ignore: cast_nullable_to_non_nullable
                      as MoneyStat,
            ordersTotalAmount: null == ordersTotalAmount
                ? _value.ordersTotalAmount
                : ordersTotalAmount // ignore: cast_nullable_to_non_nullable
                      as MoneyStat,
            nextPayout: freezed == nextPayout
                ? _value.nextPayout
                : nextPayout // ignore: cast_nullable_to_non_nullable
                      as NextPayout?,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyStatCopyWith<$Res> get totalRevenue {
    return $MoneyStatCopyWith<$Res>(_value.totalRevenue, (value) {
      return _then(_value.copyWith(totalRevenue: value) as $Val);
    });
  }

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderStatCopyWith<$Res> get totalOrders {
    return $OrderStatCopyWith<$Res>(_value.totalOrders, (value) {
      return _then(_value.copyWith(totalOrders: value) as $Val);
    });
  }

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyStatCopyWith<$Res> get grossProfit {
    return $MoneyStatCopyWith<$Res>(_value.grossProfit, (value) {
      return _then(_value.copyWith(grossProfit: value) as $Val);
    });
  }

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyStatCopyWith<$Res> get ordersTotalAmount {
    return $MoneyStatCopyWith<$Res>(_value.ordersTotalAmount, (value) {
      return _then(_value.copyWith(ordersTotalAmount: value) as $Val);
    });
  }

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NextPayoutCopyWith<$Res>? get nextPayout {
    if (_value.nextPayout == null) {
      return null;
    }

    return $NextPayoutCopyWith<$Res>(_value.nextPayout!, (value) {
      return _then(_value.copyWith(nextPayout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardSummaryImplCopyWith<$Res>
    implements $DashboardSummaryCopyWith<$Res> {
  factory _$$DashboardSummaryImplCopyWith(
    _$DashboardSummaryImpl value,
    $Res Function(_$DashboardSummaryImpl) then,
  ) = __$$DashboardSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_revenue') MoneyStat totalRevenue,
    @JsonKey(name: 'total_orders') OrderStat totalOrders,
    @JsonKey(name: 'gross_profit') MoneyStat grossProfit,
    @JsonKey(name: 'orders_total_amount') MoneyStat ordersTotalAmount,
    @JsonKey(name: 'next_payout') NextPayout? nextPayout,
  });

  @override
  $MoneyStatCopyWith<$Res> get totalRevenue;
  @override
  $OrderStatCopyWith<$Res> get totalOrders;
  @override
  $MoneyStatCopyWith<$Res> get grossProfit;
  @override
  $MoneyStatCopyWith<$Res> get ordersTotalAmount;
  @override
  $NextPayoutCopyWith<$Res>? get nextPayout;
}

/// @nodoc
class __$$DashboardSummaryImplCopyWithImpl<$Res>
    extends _$DashboardSummaryCopyWithImpl<$Res, _$DashboardSummaryImpl>
    implements _$$DashboardSummaryImplCopyWith<$Res> {
  __$$DashboardSummaryImplCopyWithImpl(
    _$DashboardSummaryImpl _value,
    $Res Function(_$DashboardSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRevenue = null,
    Object? totalOrders = null,
    Object? grossProfit = null,
    Object? ordersTotalAmount = null,
    Object? nextPayout = freezed,
  }) {
    return _then(
      _$DashboardSummaryImpl(
        totalRevenue: null == totalRevenue
            ? _value.totalRevenue
            : totalRevenue // ignore: cast_nullable_to_non_nullable
                  as MoneyStat,
        totalOrders: null == totalOrders
            ? _value.totalOrders
            : totalOrders // ignore: cast_nullable_to_non_nullable
                  as OrderStat,
        grossProfit: null == grossProfit
            ? _value.grossProfit
            : grossProfit // ignore: cast_nullable_to_non_nullable
                  as MoneyStat,
        ordersTotalAmount: null == ordersTotalAmount
            ? _value.ordersTotalAmount
            : ordersTotalAmount // ignore: cast_nullable_to_non_nullable
                  as MoneyStat,
        nextPayout: freezed == nextPayout
            ? _value.nextPayout
            : nextPayout // ignore: cast_nullable_to_non_nullable
                  as NextPayout?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardSummaryImpl extends _DashboardSummary {
  const _$DashboardSummaryImpl({
    @JsonKey(name: 'total_revenue') required this.totalRevenue,
    @JsonKey(name: 'total_orders') required this.totalOrders,
    @JsonKey(name: 'gross_profit') required this.grossProfit,
    @JsonKey(name: 'orders_total_amount') required this.ordersTotalAmount,
    @JsonKey(name: 'next_payout') this.nextPayout,
  }) : super._();

  factory _$DashboardSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total_revenue')
  final MoneyStat totalRevenue;
  @override
  @JsonKey(name: 'total_orders')
  final OrderStat totalOrders;
  @override
  @JsonKey(name: 'gross_profit')
  final MoneyStat grossProfit;
  @override
  @JsonKey(name: 'orders_total_amount')
  final MoneyStat ordersTotalAmount;
  @override
  @JsonKey(name: 'next_payout')
  final NextPayout? nextPayout;

  @override
  String toString() {
    return 'DashboardSummary(totalRevenue: $totalRevenue, totalOrders: $totalOrders, grossProfit: $grossProfit, ordersTotalAmount: $ordersTotalAmount, nextPayout: $nextPayout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardSummaryImpl &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.grossProfit, grossProfit) ||
                other.grossProfit == grossProfit) &&
            (identical(other.ordersTotalAmount, ordersTotalAmount) ||
                other.ordersTotalAmount == ordersTotalAmount) &&
            (identical(other.nextPayout, nextPayout) ||
                other.nextPayout == nextPayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalRevenue,
    totalOrders,
    grossProfit,
    ordersTotalAmount,
    nextPayout,
  );

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardSummaryImplCopyWith<_$DashboardSummaryImpl> get copyWith =>
      __$$DashboardSummaryImplCopyWithImpl<_$DashboardSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardSummaryImplToJson(this);
  }
}

abstract class _DashboardSummary extends DashboardSummary {
  const factory _DashboardSummary({
    @JsonKey(name: 'total_revenue') required final MoneyStat totalRevenue,
    @JsonKey(name: 'total_orders') required final OrderStat totalOrders,
    @JsonKey(name: 'gross_profit') required final MoneyStat grossProfit,
    @JsonKey(name: 'orders_total_amount')
    required final MoneyStat ordersTotalAmount,
    @JsonKey(name: 'next_payout') final NextPayout? nextPayout,
  }) = _$DashboardSummaryImpl;
  const _DashboardSummary._() : super._();

  factory _DashboardSummary.fromJson(Map<String, dynamic> json) =
      _$DashboardSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total_revenue')
  MoneyStat get totalRevenue;
  @override
  @JsonKey(name: 'total_orders')
  OrderStat get totalOrders;
  @override
  @JsonKey(name: 'gross_profit')
  MoneyStat get grossProfit;
  @override
  @JsonKey(name: 'orders_total_amount')
  MoneyStat get ordersTotalAmount;
  @override
  @JsonKey(name: 'next_payout')
  NextPayout? get nextPayout;

  /// Create a copy of DashboardSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardSummaryImplCopyWith<_$DashboardSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoneyStat _$MoneyStatFromJson(Map<String, dynamic> json) {
  return _MoneyStat.fromJson(json);
}

/// @nodoc
mixin _$MoneyStat {
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_change')
  double get weeklyChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage_change')
  double get percentageChange => throw _privateConstructorUsedError;

  /// Serializes this MoneyStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyStatCopyWith<MoneyStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyStatCopyWith<$Res> {
  factory $MoneyStatCopyWith(MoneyStat value, $Res Function(MoneyStat) then) =
      _$MoneyStatCopyWithImpl<$Res, MoneyStat>;
  @useResult
  $Res call({
    double amount,
    @JsonKey(name: 'weekly_change') double weeklyChange,
    @JsonKey(name: 'percentage_change') double percentageChange,
  });
}

/// @nodoc
class _$MoneyStatCopyWithImpl<$Res, $Val extends MoneyStat>
    implements $MoneyStatCopyWith<$Res> {
  _$MoneyStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? weeklyChange = null,
    Object? percentageChange = null,
  }) {
    return _then(
      _value.copyWith(
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            weeklyChange: null == weeklyChange
                ? _value.weeklyChange
                : weeklyChange // ignore: cast_nullable_to_non_nullable
                      as double,
            percentageChange: null == percentageChange
                ? _value.percentageChange
                : percentageChange // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoneyStatImplCopyWith<$Res>
    implements $MoneyStatCopyWith<$Res> {
  factory _$$MoneyStatImplCopyWith(
    _$MoneyStatImpl value,
    $Res Function(_$MoneyStatImpl) then,
  ) = __$$MoneyStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double amount,
    @JsonKey(name: 'weekly_change') double weeklyChange,
    @JsonKey(name: 'percentage_change') double percentageChange,
  });
}

/// @nodoc
class __$$MoneyStatImplCopyWithImpl<$Res>
    extends _$MoneyStatCopyWithImpl<$Res, _$MoneyStatImpl>
    implements _$$MoneyStatImplCopyWith<$Res> {
  __$$MoneyStatImplCopyWithImpl(
    _$MoneyStatImpl _value,
    $Res Function(_$MoneyStatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoneyStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? weeklyChange = null,
    Object? percentageChange = null,
  }) {
    return _then(
      _$MoneyStatImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        weeklyChange: null == weeklyChange
            ? _value.weeklyChange
            : weeklyChange // ignore: cast_nullable_to_non_nullable
                  as double,
        percentageChange: null == percentageChange
            ? _value.percentageChange
            : percentageChange // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyStatImpl extends _MoneyStat {
  const _$MoneyStatImpl({
    required this.amount,
    @JsonKey(name: 'weekly_change') required this.weeklyChange,
    @JsonKey(name: 'percentage_change') required this.percentageChange,
  }) : super._();

  factory _$MoneyStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyStatImplFromJson(json);

  @override
  final double amount;
  @override
  @JsonKey(name: 'weekly_change')
  final double weeklyChange;
  @override
  @JsonKey(name: 'percentage_change')
  final double percentageChange;

  @override
  String toString() {
    return 'MoneyStat(amount: $amount, weeklyChange: $weeklyChange, percentageChange: $percentageChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyStatImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.weeklyChange, weeklyChange) ||
                other.weeklyChange == weeklyChange) &&
            (identical(other.percentageChange, percentageChange) ||
                other.percentageChange == percentageChange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, weeklyChange, percentageChange);

  /// Create a copy of MoneyStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyStatImplCopyWith<_$MoneyStatImpl> get copyWith =>
      __$$MoneyStatImplCopyWithImpl<_$MoneyStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyStatImplToJson(this);
  }
}

abstract class _MoneyStat extends MoneyStat {
  const factory _MoneyStat({
    required final double amount,
    @JsonKey(name: 'weekly_change') required final double weeklyChange,
    @JsonKey(name: 'percentage_change') required final double percentageChange,
  }) = _$MoneyStatImpl;
  const _MoneyStat._() : super._();

  factory _MoneyStat.fromJson(Map<String, dynamic> json) =
      _$MoneyStatImpl.fromJson;

  @override
  double get amount;
  @override
  @JsonKey(name: 'weekly_change')
  double get weeklyChange;
  @override
  @JsonKey(name: 'percentage_change')
  double get percentageChange;

  /// Create a copy of MoneyStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyStatImplCopyWith<_$MoneyStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStat _$OrderStatFromJson(Map<String, dynamic> json) {
  return _OrderStat.fromJson(json);
}

/// @nodoc
mixin _$OrderStat {
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_change')
  int get weeklyChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage_change')
  double get percentageChange => throw _privateConstructorUsedError;

  /// Serializes this OrderStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatCopyWith<OrderStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatCopyWith<$Res> {
  factory $OrderStatCopyWith(OrderStat value, $Res Function(OrderStat) then) =
      _$OrderStatCopyWithImpl<$Res, OrderStat>;
  @useResult
  $Res call({
    int count,
    @JsonKey(name: 'weekly_change') int weeklyChange,
    @JsonKey(name: 'percentage_change') double percentageChange,
  });
}

/// @nodoc
class _$OrderStatCopyWithImpl<$Res, $Val extends OrderStat>
    implements $OrderStatCopyWith<$Res> {
  _$OrderStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? weeklyChange = null,
    Object? percentageChange = null,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            weeklyChange: null == weeklyChange
                ? _value.weeklyChange
                : weeklyChange // ignore: cast_nullable_to_non_nullable
                      as int,
            percentageChange: null == percentageChange
                ? _value.percentageChange
                : percentageChange // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderStatImplCopyWith<$Res>
    implements $OrderStatCopyWith<$Res> {
  factory _$$OrderStatImplCopyWith(
    _$OrderStatImpl value,
    $Res Function(_$OrderStatImpl) then,
  ) = __$$OrderStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int count,
    @JsonKey(name: 'weekly_change') int weeklyChange,
    @JsonKey(name: 'percentage_change') double percentageChange,
  });
}

/// @nodoc
class __$$OrderStatImplCopyWithImpl<$Res>
    extends _$OrderStatCopyWithImpl<$Res, _$OrderStatImpl>
    implements _$$OrderStatImplCopyWith<$Res> {
  __$$OrderStatImplCopyWithImpl(
    _$OrderStatImpl _value,
    $Res Function(_$OrderStatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? weeklyChange = null,
    Object? percentageChange = null,
  }) {
    return _then(
      _$OrderStatImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        weeklyChange: null == weeklyChange
            ? _value.weeklyChange
            : weeklyChange // ignore: cast_nullable_to_non_nullable
                  as int,
        percentageChange: null == percentageChange
            ? _value.percentageChange
            : percentageChange // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatImpl extends _OrderStat {
  const _$OrderStatImpl({
    required this.count,
    @JsonKey(name: 'weekly_change') required this.weeklyChange,
    @JsonKey(name: 'percentage_change') required this.percentageChange,
  }) : super._();

  factory _$OrderStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatImplFromJson(json);

  @override
  final int count;
  @override
  @JsonKey(name: 'weekly_change')
  final int weeklyChange;
  @override
  @JsonKey(name: 'percentage_change')
  final double percentageChange;

  @override
  String toString() {
    return 'OrderStat(count: $count, weeklyChange: $weeklyChange, percentageChange: $percentageChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.weeklyChange, weeklyChange) ||
                other.weeklyChange == weeklyChange) &&
            (identical(other.percentageChange, percentageChange) ||
                other.percentageChange == percentageChange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, count, weeklyChange, percentageChange);

  /// Create a copy of OrderStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatImplCopyWith<_$OrderStatImpl> get copyWith =>
      __$$OrderStatImplCopyWithImpl<_$OrderStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatImplToJson(this);
  }
}

abstract class _OrderStat extends OrderStat {
  const factory _OrderStat({
    required final int count,
    @JsonKey(name: 'weekly_change') required final int weeklyChange,
    @JsonKey(name: 'percentage_change') required final double percentageChange,
  }) = _$OrderStatImpl;
  const _OrderStat._() : super._();

  factory _OrderStat.fromJson(Map<String, dynamic> json) =
      _$OrderStatImpl.fromJson;

  @override
  int get count;
  @override
  @JsonKey(name: 'weekly_change')
  int get weeklyChange;
  @override
  @JsonKey(name: 'percentage_change')
  double get percentageChange;

  /// Create a copy of OrderStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatImplCopyWith<_$OrderStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NextPayout _$NextPayoutFromJson(Map<String, dynamic> json) {
  return _NextPayout.fromJson(json);
}

/// @nodoc
mixin _$NextPayout {
  String get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_name')
  String get storeName => throw _privateConstructorUsedError;

  /// Serializes this NextPayout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NextPayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NextPayoutCopyWith<NextPayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextPayoutCopyWith<$Res> {
  factory $NextPayoutCopyWith(
    NextPayout value,
    $Res Function(NextPayout) then,
  ) = _$NextPayoutCopyWithImpl<$Res, NextPayout>;
  @useResult
  $Res call({
    String date,
    double amount,
    @JsonKey(name: 'store_name') String storeName,
  });
}

/// @nodoc
class _$NextPayoutCopyWithImpl<$Res, $Val extends NextPayout>
    implements $NextPayoutCopyWith<$Res> {
  _$NextPayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NextPayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? storeName = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            storeName: null == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NextPayoutImplCopyWith<$Res>
    implements $NextPayoutCopyWith<$Res> {
  factory _$$NextPayoutImplCopyWith(
    _$NextPayoutImpl value,
    $Res Function(_$NextPayoutImpl) then,
  ) = __$$NextPayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String date,
    double amount,
    @JsonKey(name: 'store_name') String storeName,
  });
}

/// @nodoc
class __$$NextPayoutImplCopyWithImpl<$Res>
    extends _$NextPayoutCopyWithImpl<$Res, _$NextPayoutImpl>
    implements _$$NextPayoutImplCopyWith<$Res> {
  __$$NextPayoutImplCopyWithImpl(
    _$NextPayoutImpl _value,
    $Res Function(_$NextPayoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NextPayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? storeName = null,
  }) {
    return _then(
      _$NextPayoutImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        storeName: null == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NextPayoutImpl extends _NextPayout {
  const _$NextPayoutImpl({
    required this.date,
    required this.amount,
    @JsonKey(name: 'store_name') required this.storeName,
  }) : super._();

  factory _$NextPayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextPayoutImplFromJson(json);

  @override
  final String date;
  @override
  final double amount;
  @override
  @JsonKey(name: 'store_name')
  final String storeName;

  @override
  String toString() {
    return 'NextPayout(date: $date, amount: $amount, storeName: $storeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPayoutImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, amount, storeName);

  /// Create a copy of NextPayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextPayoutImplCopyWith<_$NextPayoutImpl> get copyWith =>
      __$$NextPayoutImplCopyWithImpl<_$NextPayoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextPayoutImplToJson(this);
  }
}

abstract class _NextPayout extends NextPayout {
  const factory _NextPayout({
    required final String date,
    required final double amount,
    @JsonKey(name: 'store_name') required final String storeName,
  }) = _$NextPayoutImpl;
  const _NextPayout._() : super._();

  factory _NextPayout.fromJson(Map<String, dynamic> json) =
      _$NextPayoutImpl.fromJson;

  @override
  String get date;
  @override
  double get amount;
  @override
  @JsonKey(name: 'store_name')
  String get storeName;

  /// Create a copy of NextPayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextPayoutImplCopyWith<_$NextPayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesChart _$SalesChartFromJson(Map<String, dynamic> json) {
  return _SalesChart.fromJson(json);
}

/// @nodoc
mixin _$SalesChart {
  List<String> get labels => throw _privateConstructorUsedError;
  List<double> get data => throw _privateConstructorUsedError;

  /// Serializes this SalesChart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesChartCopyWith<SalesChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesChartCopyWith<$Res> {
  factory $SalesChartCopyWith(
    SalesChart value,
    $Res Function(SalesChart) then,
  ) = _$SalesChartCopyWithImpl<$Res, SalesChart>;
  @useResult
  $Res call({List<String> labels, List<double> data});
}

/// @nodoc
class _$SalesChartCopyWithImpl<$Res, $Val extends SalesChart>
    implements $SalesChartCopyWith<$Res> {
  _$SalesChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? labels = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            labels: null == labels
                ? _value.labels
                : labels // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SalesChartImplCopyWith<$Res>
    implements $SalesChartCopyWith<$Res> {
  factory _$$SalesChartImplCopyWith(
    _$SalesChartImpl value,
    $Res Function(_$SalesChartImpl) then,
  ) = __$$SalesChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> labels, List<double> data});
}

/// @nodoc
class __$$SalesChartImplCopyWithImpl<$Res>
    extends _$SalesChartCopyWithImpl<$Res, _$SalesChartImpl>
    implements _$$SalesChartImplCopyWith<$Res> {
  __$$SalesChartImplCopyWithImpl(
    _$SalesChartImpl _value,
    $Res Function(_$SalesChartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? labels = null, Object? data = null}) {
    return _then(
      _$SalesChartImpl(
        labels: null == labels
            ? _value._labels
            : labels // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesChartImpl extends _SalesChart {
  const _$SalesChartImpl({
    required final List<String> labels,
    required final List<double> data,
  }) : _labels = labels,
       _data = data,
       super._();

  factory _$SalesChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesChartImplFromJson(json);

  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  final List<double> _data;
  @override
  List<double> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SalesChart(labels: $labels, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesChartImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_labels),
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of SalesChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesChartImplCopyWith<_$SalesChartImpl> get copyWith =>
      __$$SalesChartImplCopyWithImpl<_$SalesChartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesChartImplToJson(this);
  }
}

abstract class _SalesChart extends SalesChart {
  const factory _SalesChart({
    required final List<String> labels,
    required final List<double> data,
  }) = _$SalesChartImpl;
  const _SalesChart._() : super._();

  factory _SalesChart.fromJson(Map<String, dynamic> json) =
      _$SalesChartImpl.fromJson;

  @override
  List<String> get labels;
  @override
  List<double> get data;

  /// Create a copy of SalesChart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesChartImplCopyWith<_$SalesChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OperationalMetrics _$OperationalMetricsFromJson(Map<String, dynamic> json) {
  return _OperationalMetrics.fromJson(json);
}

/// @nodoc
mixin _$OperationalMetrics {
  @JsonKey(name: 'orders_to_fulfill')
  int get ordersToFulfill => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_risk_orders')
  int get highRiskOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'chargeback_orders')
  int get chargebackOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_count')
  int get orderCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'refunded_orders')
  int get refundedOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'unresolved_dispute_orders')
  int get unresolvedDisputeOrders => throw _privateConstructorUsedError;

  /// Serializes this OperationalMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OperationalMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OperationalMetricsCopyWith<OperationalMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationalMetricsCopyWith<$Res> {
  factory $OperationalMetricsCopyWith(
    OperationalMetrics value,
    $Res Function(OperationalMetrics) then,
  ) = _$OperationalMetricsCopyWithImpl<$Res, OperationalMetrics>;
  @useResult
  $Res call({
    @JsonKey(name: 'orders_to_fulfill') int ordersToFulfill,
    @JsonKey(name: 'high_risk_orders') int highRiskOrders,
    @JsonKey(name: 'chargeback_orders') int chargebackOrders,
    @JsonKey(name: 'order_count') int orderCount,
    @JsonKey(name: 'refunded_orders') int refundedOrders,
    @JsonKey(name: 'unresolved_dispute_orders') int unresolvedDisputeOrders,
  });
}

/// @nodoc
class _$OperationalMetricsCopyWithImpl<$Res, $Val extends OperationalMetrics>
    implements $OperationalMetricsCopyWith<$Res> {
  _$OperationalMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OperationalMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersToFulfill = null,
    Object? highRiskOrders = null,
    Object? chargebackOrders = null,
    Object? orderCount = null,
    Object? refundedOrders = null,
    Object? unresolvedDisputeOrders = null,
  }) {
    return _then(
      _value.copyWith(
            ordersToFulfill: null == ordersToFulfill
                ? _value.ordersToFulfill
                : ordersToFulfill // ignore: cast_nullable_to_non_nullable
                      as int,
            highRiskOrders: null == highRiskOrders
                ? _value.highRiskOrders
                : highRiskOrders // ignore: cast_nullable_to_non_nullable
                      as int,
            chargebackOrders: null == chargebackOrders
                ? _value.chargebackOrders
                : chargebackOrders // ignore: cast_nullable_to_non_nullable
                      as int,
            orderCount: null == orderCount
                ? _value.orderCount
                : orderCount // ignore: cast_nullable_to_non_nullable
                      as int,
            refundedOrders: null == refundedOrders
                ? _value.refundedOrders
                : refundedOrders // ignore: cast_nullable_to_non_nullable
                      as int,
            unresolvedDisputeOrders: null == unresolvedDisputeOrders
                ? _value.unresolvedDisputeOrders
                : unresolvedDisputeOrders // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OperationalMetricsImplCopyWith<$Res>
    implements $OperationalMetricsCopyWith<$Res> {
  factory _$$OperationalMetricsImplCopyWith(
    _$OperationalMetricsImpl value,
    $Res Function(_$OperationalMetricsImpl) then,
  ) = __$$OperationalMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'orders_to_fulfill') int ordersToFulfill,
    @JsonKey(name: 'high_risk_orders') int highRiskOrders,
    @JsonKey(name: 'chargeback_orders') int chargebackOrders,
    @JsonKey(name: 'order_count') int orderCount,
    @JsonKey(name: 'refunded_orders') int refundedOrders,
    @JsonKey(name: 'unresolved_dispute_orders') int unresolvedDisputeOrders,
  });
}

/// @nodoc
class __$$OperationalMetricsImplCopyWithImpl<$Res>
    extends _$OperationalMetricsCopyWithImpl<$Res, _$OperationalMetricsImpl>
    implements _$$OperationalMetricsImplCopyWith<$Res> {
  __$$OperationalMetricsImplCopyWithImpl(
    _$OperationalMetricsImpl _value,
    $Res Function(_$OperationalMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OperationalMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersToFulfill = null,
    Object? highRiskOrders = null,
    Object? chargebackOrders = null,
    Object? orderCount = null,
    Object? refundedOrders = null,
    Object? unresolvedDisputeOrders = null,
  }) {
    return _then(
      _$OperationalMetricsImpl(
        ordersToFulfill: null == ordersToFulfill
            ? _value.ordersToFulfill
            : ordersToFulfill // ignore: cast_nullable_to_non_nullable
                  as int,
        highRiskOrders: null == highRiskOrders
            ? _value.highRiskOrders
            : highRiskOrders // ignore: cast_nullable_to_non_nullable
                  as int,
        chargebackOrders: null == chargebackOrders
            ? _value.chargebackOrders
            : chargebackOrders // ignore: cast_nullable_to_non_nullable
                  as int,
        orderCount: null == orderCount
            ? _value.orderCount
            : orderCount // ignore: cast_nullable_to_non_nullable
                  as int,
        refundedOrders: null == refundedOrders
            ? _value.refundedOrders
            : refundedOrders // ignore: cast_nullable_to_non_nullable
                  as int,
        unresolvedDisputeOrders: null == unresolvedDisputeOrders
            ? _value.unresolvedDisputeOrders
            : unresolvedDisputeOrders // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationalMetricsImpl extends _OperationalMetrics {
  const _$OperationalMetricsImpl({
    @JsonKey(name: 'orders_to_fulfill') required this.ordersToFulfill,
    @JsonKey(name: 'high_risk_orders') required this.highRiskOrders,
    @JsonKey(name: 'chargeback_orders') required this.chargebackOrders,
    @JsonKey(name: 'order_count') required this.orderCount,
    @JsonKey(name: 'refunded_orders') required this.refundedOrders,
    @JsonKey(name: 'unresolved_dispute_orders')
    required this.unresolvedDisputeOrders,
  }) : super._();

  factory _$OperationalMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperationalMetricsImplFromJson(json);

  @override
  @JsonKey(name: 'orders_to_fulfill')
  final int ordersToFulfill;
  @override
  @JsonKey(name: 'high_risk_orders')
  final int highRiskOrders;
  @override
  @JsonKey(name: 'chargeback_orders')
  final int chargebackOrders;
  @override
  @JsonKey(name: 'order_count')
  final int orderCount;
  @override
  @JsonKey(name: 'refunded_orders')
  final int refundedOrders;
  @override
  @JsonKey(name: 'unresolved_dispute_orders')
  final int unresolvedDisputeOrders;

  @override
  String toString() {
    return 'OperationalMetrics(ordersToFulfill: $ordersToFulfill, highRiskOrders: $highRiskOrders, chargebackOrders: $chargebackOrders, orderCount: $orderCount, refundedOrders: $refundedOrders, unresolvedDisputeOrders: $unresolvedDisputeOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationalMetricsImpl &&
            (identical(other.ordersToFulfill, ordersToFulfill) ||
                other.ordersToFulfill == ordersToFulfill) &&
            (identical(other.highRiskOrders, highRiskOrders) ||
                other.highRiskOrders == highRiskOrders) &&
            (identical(other.chargebackOrders, chargebackOrders) ||
                other.chargebackOrders == chargebackOrders) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            (identical(other.refundedOrders, refundedOrders) ||
                other.refundedOrders == refundedOrders) &&
            (identical(
                  other.unresolvedDisputeOrders,
                  unresolvedDisputeOrders,
                ) ||
                other.unresolvedDisputeOrders == unresolvedDisputeOrders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ordersToFulfill,
    highRiskOrders,
    chargebackOrders,
    orderCount,
    refundedOrders,
    unresolvedDisputeOrders,
  );

  /// Create a copy of OperationalMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationalMetricsImplCopyWith<_$OperationalMetricsImpl> get copyWith =>
      __$$OperationalMetricsImplCopyWithImpl<_$OperationalMetricsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationalMetricsImplToJson(this);
  }
}

abstract class _OperationalMetrics extends OperationalMetrics {
  const factory _OperationalMetrics({
    @JsonKey(name: 'orders_to_fulfill') required final int ordersToFulfill,
    @JsonKey(name: 'high_risk_orders') required final int highRiskOrders,
    @JsonKey(name: 'chargeback_orders') required final int chargebackOrders,
    @JsonKey(name: 'order_count') required final int orderCount,
    @JsonKey(name: 'refunded_orders') required final int refundedOrders,
    @JsonKey(name: 'unresolved_dispute_orders')
    required final int unresolvedDisputeOrders,
  }) = _$OperationalMetricsImpl;
  const _OperationalMetrics._() : super._();

  factory _OperationalMetrics.fromJson(Map<String, dynamic> json) =
      _$OperationalMetricsImpl.fromJson;

  @override
  @JsonKey(name: 'orders_to_fulfill')
  int get ordersToFulfill;
  @override
  @JsonKey(name: 'high_risk_orders')
  int get highRiskOrders;
  @override
  @JsonKey(name: 'chargeback_orders')
  int get chargebackOrders;
  @override
  @JsonKey(name: 'order_count')
  int get orderCount;
  @override
  @JsonKey(name: 'refunded_orders')
  int get refundedOrders;
  @override
  @JsonKey(name: 'unresolved_dispute_orders')
  int get unresolvedDisputeOrders;

  /// Create a copy of OperationalMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OperationalMetricsImplCopyWith<_$OperationalMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
