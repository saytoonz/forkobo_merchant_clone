class StoreActivity {
  final String id;
  final String? activityType;
  final String? title;
  final String? description;
  final Map<String, dynamic>? metadata;
  final String? source;
  final String? adminEmail;
  final DateTime? createdAt;

  StoreActivity({
    required this.id,
    this.activityType,
    this.title,
    this.description,
    this.metadata,
    this.source,
    this.adminEmail,
    this.createdAt,
  });

  factory StoreActivity.fromJson(Map<String, dynamic> json) {
    DateTime? parseDateTime(String? v) {
      if (v == null || v.isEmpty) return null;
      try {
        return DateTime.parse(v);
      } catch (_) {
        return null;
      }
    }

    return StoreActivity(
      id: json['id']?.toString() ?? '',
      activityType: json['activity_type'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] is Map<String, dynamic>)
          ? json['metadata'] as Map<String, dynamic>
          : null,
      source: json['source'] as String?,
      adminEmail: json['admin_email'] as String?,
      createdAt: parseDateTime(json['created_at'] as String?),
    );
  }
}