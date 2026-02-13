class PayoutSummary {
  final int completedPayouts;
  final int remainingPayouts;
  final num totalEarned;
  final String? nextPayoutDate; // yyyy-MM-dd

  PayoutSummary({
    required this.completedPayouts,
    required this.remainingPayouts,
    required this.totalEarned,
    required this.nextPayoutDate,
  });

  factory PayoutSummary.fromJson(Map<String, dynamic> json) {
    return PayoutSummary(
      completedPayouts: (json['completed_payouts'] as num?)?.toInt() ?? 0,
      remainingPayouts: (json['remaining_payouts'] as num?)?.toInt() ?? 0,
      totalEarned: json['total_earned'] as num? ?? 0,
      nextPayoutDate: json['next_payout_date'] as String?,
    );
  }
}

class MerchantStore {
  final String id;
  final String storeName;
  final String? managementType;
  final String? status;
  final Map<String, dynamic>? platform;
  final DateTime? wentLiveAt;
  final DateTime? expiresAt;
  final PayoutSummary? payoutSummary;

  MerchantStore({
    required this.id,
    required this.storeName,
    this.managementType,
    this.status,
    this.platform,
    this.wentLiveAt,
    this.expiresAt,
    this.payoutSummary,
  });

  factory MerchantStore.fromJson(Map<String, dynamic> json) {
    DateTime? parseDateTime(String? v) {
      if (v == null || v.isEmpty) return null;
      try {
        return DateTime.parse(v);
      } catch (_) {
        return null;
      }
    }

    return MerchantStore(
      id: json['id']?.toString() ?? '',
      storeName: json['store_name']?.toString() ?? '',
      managementType: json['management_type'] as String?,
      status: json['status'] as String?,
      platform:
          (json['platform'] is Map<String, dynamic>)
              ? json['platform'] as Map<String, dynamic>
              : null,
      wentLiveAt: parseDateTime(json['went_live_at'] as String?),
      expiresAt: parseDateTime(json['expires_at'] as String?),
      payoutSummary: (json['payout_summary'] is Map<String, dynamic>)
          ? PayoutSummary.fromJson(json['payout_summary'] as Map<String, dynamic>)
          : null,
    );
  }
}