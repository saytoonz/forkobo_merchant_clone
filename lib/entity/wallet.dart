class Wallet {
  final num availableBalance;
  final num pendingBalance;
  final num totalEarned;
  final num totalWithdrawn;
  final String currency;
  final DateTime? lastPayoutAt;

  Wallet({
    required this.availableBalance,
    required this.pendingBalance,
    required this.totalEarned,
    required this.totalWithdrawn,
    required this.currency,
    this.lastPayoutAt,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) {
    DateTime? parseDate(String? v) {
      if (v == null || v.isEmpty) return null;
      try {
        return DateTime.parse(v);
      } catch (_) {
        return null;
      }
    }

    return Wallet(
      availableBalance: json['available_balance'] as num? ?? 0,
      pendingBalance: json['pending_balance'] as num? ?? 0,
      totalEarned: json['total_earned'] as num? ?? 0,
      totalWithdrawn: json['total_withdrawn'] as num? ?? 0,
      currency: json['currency']?.toString() ?? 'USD',
      lastPayoutAt: parseDate(json['last_payout_at'] as String?),
    );
  }
}