class Category {
  final int id;
  final String title;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Category({
    required this.id,
    required this.title,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    DateTime? parseDateTime(String? v) {
      if (v == null || v.isEmpty) return null;
      try {
        return DateTime.parse(v);
      } catch (_) {
        return null;
      }
    }

    return Category(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title']?.toString() ?? '',
      image: json['image']?.toString(),
      createdAt: parseDateTime(json['created_at'] as String?),
      updatedAt: parseDateTime(json['updated_at'] as String?),
    );
  }
}