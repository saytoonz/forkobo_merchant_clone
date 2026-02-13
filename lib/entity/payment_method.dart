class PaymentMethod {
  const PaymentMethod({
    required this.id,
    required this.type,
    required this.name,
    required this.details,
    required this.isDefault,
  });

  final String id;
  final String type;
  final String name;
  final Map<String, dynamic> details;
  final bool isDefault;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) {
    return PaymentMethod(
      id: (json['id'] ?? json['uuid'] ?? '').toString(),
      type: (json['type'] ?? '').toString(),
      name: (json['name'] ?? '').toString(),
      details: (json['details'] as Map<String, dynamic>?) ?? <String, dynamic>{},
      isDefault: (json['is_default'] as bool?) ?? (json['primary'] as bool?) ?? false,
    );
  }
}