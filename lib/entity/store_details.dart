class StoreInfo {
  final String id;
  final String storeName;
  final String? storeDomain;
  final String? managementType;
  final String? status;
  final DateTime? wentLiveAt;
  final List<String> selectedCategories;

  StoreInfo({
    required this.id,
    required this.storeName,
    this.storeDomain,
    this.managementType,
    this.status,
    this.wentLiveAt,
    this.selectedCategories = const <String>[],
  });

  factory StoreInfo.fromJson(Map<String, dynamic> json) {
    DateTime? parseDateTime(String? v) {
      if (v == null || v.isEmpty) return null;
      try {
        return DateTime.parse(v);
      } catch (_) {
        return null;
      }
    }

    return StoreInfo(
      id: json['id']?.toString() ?? '',
      storeName: json['store_name']?.toString() ?? '',
      storeDomain: json['store_domain']?.toString(),
      managementType: json['management_type']?.toString(),
      status: json['status']?.toString(),
      wentLiveAt: parseDateTime(json['went_live_at'] as String?),
      selectedCategories: (json['selected_categories'] as List<dynamic>? ?? const [])
          .map((e) => e.toString())
          .toList(),
    );
  }
}

class RevenueAnalytics {
  final num amount;
  final num percentageChange;

  RevenueAnalytics({required this.amount, required this.percentageChange});

  factory RevenueAnalytics.fromJson(Map<String, dynamic> json) => RevenueAnalytics(
        amount: json['amount'] as num? ?? 0,
        percentageChange: json['percentage_change'] as num? ?? 0,
      );
}

class OrdersAnalytics {
  final int count;
  final num percentageChange;

  OrdersAnalytics({required this.count, required this.percentageChange});

  factory OrdersAnalytics.fromJson(Map<String, dynamic> json) => OrdersAnalytics(
        count: (json['count'] as num?)?.toInt() ?? 0,
        percentageChange: json['percentage_change'] as num? ?? 0,
      );
}

class StoreAnalytics {
  final RevenueAnalytics totalRevenue;
  final OrdersAnalytics orders;
  final num adSpend;

  StoreAnalytics({
    required this.totalRevenue,
    required this.orders,
    required this.adSpend,
  });

  factory StoreAnalytics.fromJson(Map<String, dynamic> json) => StoreAnalytics(
        totalRevenue: RevenueAnalytics.fromJson(
            (json['total_revenue'] as Map<String, dynamic>? ?? <String, dynamic>{})),
        orders: OrdersAnalytics.fromJson(
            (json['orders'] as Map<String, dynamic>? ?? <String, dynamic>{})),
        adSpend: json['ad_spend'] as num? ?? 0,
      );
}

class LastPayout {
  final DateTime? date;
  final num amount;

  LastPayout({this.date, required this.amount});

  factory LastPayout.fromJson(Map<String, dynamic> json) {
    DateTime? parseDate(String? v) {
      if (v == null || v.isEmpty) return null;
      try {
        return DateTime.parse(v);
      } catch (_) {
        return null;
      }
    }

    return LastPayout(
      date: parseDate(json['date'] as String?),
      amount: json['amount'] as num? ?? 0,
    );
  }
}

class StoreDetailsResponse {
  final StoreInfo store;
  final StoreAnalytics analytics;
  final LastPayout lastPayout;

  StoreDetailsResponse({
    required this.store,
    required this.analytics,
    required this.lastPayout,
  });

  factory StoreDetailsResponse.fromJson(Map<String, dynamic> json) =>
      StoreDetailsResponse(
        store: StoreInfo.fromJson(
            (json['store'] as Map<String, dynamic>? ?? <String, dynamic>{})),
        analytics: StoreAnalytics.fromJson(
            (json['analytics'] as Map<String, dynamic>? ?? <String, dynamic>{})),
        lastPayout: LastPayout.fromJson(
            (json['last_payout'] as Map<String, dynamic>? ?? <String, dynamic>{})),
      );
}