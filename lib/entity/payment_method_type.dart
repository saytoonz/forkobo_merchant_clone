class PaymentMethodType {
  const PaymentMethodType({
    required this.type,
    required this.name,
    this.description,
    required this.requiredFields,
    this.enumOptions = const <String, List<String>>{},
  });

  final String type;
  final String name;
  final String? description;
  final List<FieldSpec> requiredFields;
  // Maps a field key (e.g., 'network') to a list of selectable options
  // discovered from top-level arrays in the type payload (e.g., 'networks').
  final Map<String, List<String>> enumOptions;

  factory PaymentMethodType.fromJson(Map<String, dynamic> json) {
    final List<dynamic> fieldsJson = (json['required_fields'] as List<dynamic>?) ?? <dynamic>[];

    // Capture top-level arrays as options for corresponding singular field names
    final Map<String, List<String>> opts = <String, List<String>>{};
    for (final MapEntry<String, dynamic> entry in json.entries) {
      final String key = entry.key;
      final dynamic val = entry.value;
      if (key == 'required_fields' || key == 'type' || key == 'name' || key == 'description') {
        continue;
      }
      if (val is List) {
        final List<String> list = val.whereType<dynamic>().map((dynamic e) => e.toString()).toList();
        if (list.isNotEmpty) {
          final String singular = _singularize(key);
          // Only record if this singular likely matches a required field key
          opts[singular] = list;
        }
      }
    }
    return PaymentMethodType(
      type: (json['type'] ?? '').toString(),
      name: (json['name'] ?? '').toString(),
      description: json['description']?.toString(),
      requiredFields: fieldsJson.map((dynamic e) => FieldSpec.fromDynamic(e)).toList(),
      enumOptions: opts,
    );
  }

  static String _singularize(String key) {
    // Basic singularization:
    // - 'networks' -> 'network'
    // - 'currencies' -> 'currency'
    // - 'countries' -> 'country'
    if (key.endsWith('ies') && key.length > 3) {
      return '${key.substring(0, key.length - 3)}y';
    }
    if (key.endsWith('s') && key.length > 1) {
      return key.substring(0, key.length - 1);
    }
    return key;
  }
}

class FieldSpec {
  const FieldSpec({
    required this.key,
    this.kind,
    this.required = true,
    this.options,
    this.nested,
  });

  final String key; // field name
  final String? kind; // e.g., string, number, email, phone, select, array, object
  final bool required;
  final List<String>? options; // for select or enum-like constraints
  final List<FieldSpec>? nested; // for object/array subfields

  static FieldSpec fromDynamic(dynamic json) {
    if (json is String) {
      return FieldSpec(key: json, kind: 'string', required: true);
    }
    if (json is Map<String, dynamic>) {
      final String key = (json['name'] ?? json['key'] ?? '').toString();
      final String? kind = json['type']?.toString() ?? json['kind']?.toString();
      final bool required = json['required'] is bool ? (json['required'] as bool) : true;
      final List<String>? options = _parseOptions(json);
      final List<FieldSpec>? nested = _parseNested(json);
      return FieldSpec(
        key: key,
        kind: kind,
        required: required,
        options: options,
        nested: nested,
      );
    }
    // Fallback to text field
    return const FieldSpec(key: '', kind: 'string', required: true);
  }

  static List<String>? _parseOptions(Map<String, dynamic> json) {
    // Common keys for enum/select: options, in
    final dynamic opts = json['options'] ?? json['in'];
    if (opts is List) {
      return opts.map((dynamic e) => e.toString()).toList();
    }
    return null;
  }

  static List<FieldSpec>? _parseNested(Map<String, dynamic> json) {
    final dynamic nested = json['fields'] ?? json['required_fields'];
    if (nested is List) {
      return nested.map((dynamic e) => FieldSpec.fromDynamic(e)).toList();
    }
    return null;
  }
}