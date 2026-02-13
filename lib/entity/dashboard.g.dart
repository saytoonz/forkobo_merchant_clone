// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardResponseImpl _$$DashboardResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardResponseImpl(
  summary: DashboardSummary.fromJson(json['summary'] as Map<String, dynamic>),
  salesChart: SalesChart.fromJson(json['sales_chart'] as Map<String, dynamic>),
  operationalMetrics: OperationalMetrics.fromJson(
    json['operational_metrics'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$DashboardResponseImplToJson(
  _$DashboardResponseImpl instance,
) => <String, dynamic>{
  'summary': instance.summary,
  'sales_chart': instance.salesChart,
  'operational_metrics': instance.operationalMetrics,
};

_$DashboardSummaryImpl _$$DashboardSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardSummaryImpl(
  totalRevenue: MoneyStat.fromJson(
    json['total_revenue'] as Map<String, dynamic>,
  ),
  totalOrders: OrderStat.fromJson(json['total_orders'] as Map<String, dynamic>),
  grossProfit: MoneyStat.fromJson(json['gross_profit'] as Map<String, dynamic>),
  ordersTotalAmount: MoneyStat.fromJson(
    json['orders_total_amount'] as Map<String, dynamic>,
  ),
  nextPayout: json['next_payout'] == null
      ? null
      : NextPayout.fromJson(json['next_payout'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DashboardSummaryImplToJson(
  _$DashboardSummaryImpl instance,
) => <String, dynamic>{
  'total_revenue': instance.totalRevenue,
  'total_orders': instance.totalOrders,
  'gross_profit': instance.grossProfit,
  'orders_total_amount': instance.ordersTotalAmount,
  'next_payout': instance.nextPayout,
};

_$MoneyStatImpl _$$MoneyStatImplFromJson(Map<String, dynamic> json) =>
    _$MoneyStatImpl(
      amount: (json['amount'] as num).toDouble(),
      weeklyChange: (json['weekly_change'] as num).toDouble(),
      percentageChange: (json['percentage_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$MoneyStatImplToJson(_$MoneyStatImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'weekly_change': instance.weeklyChange,
      'percentage_change': instance.percentageChange,
    };

_$OrderStatImpl _$$OrderStatImplFromJson(Map<String, dynamic> json) =>
    _$OrderStatImpl(
      count: (json['count'] as num).toInt(),
      weeklyChange: (json['weekly_change'] as num).toInt(),
      percentageChange: (json['percentage_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderStatImplToJson(_$OrderStatImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'weekly_change': instance.weeklyChange,
      'percentage_change': instance.percentageChange,
    };

_$NextPayoutImpl _$$NextPayoutImplFromJson(Map<String, dynamic> json) =>
    _$NextPayoutImpl(
      date: json['date'] as String,
      amount: (json['amount'] as num).toDouble(),
      storeName: json['store_name'] as String,
    );

Map<String, dynamic> _$$NextPayoutImplToJson(_$NextPayoutImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'amount': instance.amount,
      'store_name': instance.storeName,
    };

_$SalesChartImpl _$$SalesChartImplFromJson(Map<String, dynamic> json) =>
    _$SalesChartImpl(
      labels: (json['labels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      data: (json['data'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$SalesChartImplToJson(_$SalesChartImpl instance) =>
    <String, dynamic>{'labels': instance.labels, 'data': instance.data};

_$OperationalMetricsImpl _$$OperationalMetricsImplFromJson(
  Map<String, dynamic> json,
) => _$OperationalMetricsImpl(
  ordersToFulfill: (json['orders_to_fulfill'] as num).toInt(),
  highRiskOrders: (json['high_risk_orders'] as num).toInt(),
  chargebackOrders: (json['chargeback_orders'] as num).toInt(),
  orderCount: (json['order_count'] as num).toInt(),
  refundedOrders: (json['refunded_orders'] as num).toInt(),
  unresolvedDisputeOrders: (json['unresolved_dispute_orders'] as num).toInt(),
);

Map<String, dynamic> _$$OperationalMetricsImplToJson(
  _$OperationalMetricsImpl instance,
) => <String, dynamic>{
  'orders_to_fulfill': instance.ordersToFulfill,
  'high_risk_orders': instance.highRiskOrders,
  'chargeback_orders': instance.chargebackOrders,
  'order_count': instance.orderCount,
  'refunded_orders': instance.refundedOrders,
  'unresolved_dispute_orders': instance.unresolvedDisputeOrders,
};
