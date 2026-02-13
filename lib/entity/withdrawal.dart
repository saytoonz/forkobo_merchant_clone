class Withdrawal {
  final String id;
  final num amount;
  final String? currency;
  final String status;
  final String? referenceNumber;
  final Map<String, dynamic>? paymentMethod;
  final DateTime createdAt;

  Withdrawal({
    required this.id,
    required this.amount,
    required this.status,
    required this.createdAt,
    this.currency,
    this.referenceNumber,
    this.paymentMethod,
  });

  factory Withdrawal.fromJson(Map<String, dynamic> json) {
    DateTime parseDate(String? v) {
      try {
        return DateTime.parse(v ?? '');
      } catch (_) {
        return DateTime.now();
      }
    }

    return Withdrawal(
      id: json['id']?.toString() ?? '',
      amount: json['amount'] as num? ?? 0,
      currency: json['currency']?.toString(),
      status: json['status']?.toString() ?? '',
      referenceNumber: json['reference_number']?.toString(),
      paymentMethod: json['payment_method'] is Map<String, dynamic>
          ? (json['payment_method'] as Map<String, dynamic>)
          : null,
      createdAt: parseDate(json['created_at'] as String?),
    );
  }
}