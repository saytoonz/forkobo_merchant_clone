import 'package:freezed_annotation/freezed_annotation.dart';

// ignore_for_file: invalid_annotation_target

part 'dashboard.freezed.dart';
part 'dashboard.g.dart';

@freezed
class DashboardResponse with _$DashboardResponse {
  const DashboardResponse._();
  const factory DashboardResponse({
    required DashboardSummary summary,
    @JsonKey(name: 'sales_chart') required SalesChart salesChart,
    @JsonKey(name: 'operational_metrics') required OperationalMetrics operationalMetrics,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

@freezed
class DashboardSummary with _$DashboardSummary {
  const DashboardSummary._();
  const factory DashboardSummary({
    @JsonKey(name: 'total_revenue') required MoneyStat totalRevenue,
    @JsonKey(name: 'total_orders') required OrderStat totalOrders,
    @JsonKey(name: 'gross_profit') required MoneyStat grossProfit,
    @JsonKey(name: 'orders_total_amount') required MoneyStat ordersTotalAmount,
    @JsonKey(name: 'next_payout') NextPayout? nextPayout,
  }) = _DashboardSummary;

  factory DashboardSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardSummaryFromJson(json);
}

@freezed
class MoneyStat with _$MoneyStat {
  const MoneyStat._();
  const factory MoneyStat({
    required double amount,
    @JsonKey(name: 'weekly_change') required double weeklyChange,
    @JsonKey(name: 'percentage_change') required double percentageChange,
  }) = _MoneyStat;

  factory MoneyStat.fromJson(Map<String, dynamic> json) =>
      _$MoneyStatFromJson(json);
}

@freezed
class OrderStat with _$OrderStat {
  const OrderStat._();
  const factory OrderStat({
    required int count,
    @JsonKey(name: 'weekly_change') required int weeklyChange,
    @JsonKey(name: 'percentage_change') required double percentageChange,
  }) = _OrderStat;

  factory OrderStat.fromJson(Map<String, dynamic> json) =>
      _$OrderStatFromJson(json);
}

@freezed
class NextPayout with _$NextPayout {
  const NextPayout._();
  const factory NextPayout({
    required String date,
    required double amount,
    @JsonKey(name: 'store_name') required String storeName,
  }) = _NextPayout;

  factory NextPayout.fromJson(Map<String, dynamic> json) =>
      _$NextPayoutFromJson(json);
}

@freezed
class SalesChart with _$SalesChart {
  const SalesChart._();
  const factory SalesChart({
    required List<String> labels,
    required List<double> data,
  }) = _SalesChart;

  factory SalesChart.fromJson(Map<String, dynamic> json) =>
      _$SalesChartFromJson(json);
}

@freezed
class OperationalMetrics with _$OperationalMetrics {
  const OperationalMetrics._();
  const factory OperationalMetrics({
    @JsonKey(name: 'orders_to_fulfill') required int ordersToFulfill,
    @JsonKey(name: 'high_risk_orders') required int highRiskOrders,
    @JsonKey(name: 'chargeback_orders') required int chargebackOrders,
    @JsonKey(name: 'order_count') required int orderCount,
    @JsonKey(name: 'refunded_orders') required int refundedOrders,
    @JsonKey(name: 'unresolved_dispute_orders') required int unresolvedDisputeOrders,
  }) = _OperationalMetrics;

  factory OperationalMetrics.fromJson(Map<String, dynamic> json) =>
      _$OperationalMetricsFromJson(json);
}