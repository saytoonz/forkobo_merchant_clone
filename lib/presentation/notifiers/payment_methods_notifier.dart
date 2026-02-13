import 'package:flutter/material.dart';
import '../../di.dart';
import '../../repository/repository.dart';
import '../../entity/payment_method_type.dart';
import '../../entity/payment_method.dart';

class PaymentMethodsNotifier extends ChangeNotifier {
  PaymentMethodsNotifier() : _repo = getIt.get<Repository>();

  final Repository _repo;

  // Types state
  List<PaymentMethodType> _types = <PaymentMethodType>[];
  bool _typesLoading = false;
  String _typesError = '';

  // Methods state
  List<PaymentMethod> _methods = <PaymentMethod>[];
  bool _methodsLoading = false;
  String _methodsError = '';

  // Selection and form state
  PaymentMethodType? _selectedType;
  final Map<String, dynamic> _details = <String, dynamic>{};
  final Map<String, Map<String, String>> _nested = <String, Map<String, String>>{}; // for object/array fields
  bool _isDefault = false;

  // Submission state
  bool _submitting = false;
  String _submitError = '';
  PaymentMethod? _result;

  // Getters
  List<PaymentMethodType> get types => _types;
  bool get typesLoading => _typesLoading;
  String get typesError => _typesError;
  List<PaymentMethod> get methods => _methods;
  bool get methodsLoading => _methodsLoading;
  String get methodsError => _methodsError;
  PaymentMethodType? get selectedType => _selectedType;
  Map<String, dynamic> get details => Map<String, dynamic>.unmodifiable(_details);
  Map<String, Map<String, String>> get nested => _nested;
  bool get isDefault => _isDefault;
  bool get submitting => _submitting;
  String get submitError => _submitError;
  PaymentMethod? get result => _result;

  // Computed: form can submit when all required fields have values
  bool get canSubmit {
    final PaymentMethodType? sel = _selectedType;
    if (sel == null) return false;
    for (final FieldSpec spec in sel.requiredFields) {
      // For nested groups, require at least one non-empty pair if present
      if ((spec.kind == 'array' || spec.kind == 'object') || (spec.nested?.isNotEmpty ?? false)) {
        final Map<String, String>? group = _nested[spec.key];
        if (group == null || group.isEmpty) return false;
        final bool hasNonEmpty = group.entries.any((e) => (e.key.trim().isNotEmpty && e.value.trim().isNotEmpty));
        if (!hasNonEmpty) return false;
      } else {
        final dynamic v = _details[spec.key];
        if (v == null) return false;
        if (v is String && v.trim().isEmpty) return false;
      }
    }
    return true;
  }

  Future<void> loadTypes() async {
    _typesLoading = true;
    _typesError = '';
    notifyListeners();
    try {
      _types = await _repo.getPaymentMethodTypes();
      if (_types.isNotEmpty) {
        selectType(_types.first);
      }
    } catch (e) {
      _typesError = e.toString();
    } finally {
      _typesLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadMethods() async {
    _methodsLoading = true;
    _methodsError = '';
    notifyListeners();
    try {
      _methods = await _repo.getPaymentMethods();
    } catch (e) {
      _methodsError = e.toString();
    } finally {
      _methodsLoading = false;
      notifyListeners();
    }
  }

  void selectType(PaymentMethodType type) {
    _selectedType = type;
    _details.clear();
    _nested.clear();
    for (final FieldSpec spec in type.requiredFields) {
      if ((spec.kind == 'array' || spec.kind == 'object') || (spec.nested?.isNotEmpty ?? false)) {
        _nested[spec.key] = <String, String>{};
      } else {
        _details[spec.key] = '';
      }
    }
    notifyListeners();
  }

  void setDefault(bool value) {
    _isDefault = value;
    notifyListeners();
  }

  void setFieldValue(String key, dynamic value) {
    _details[key] = value;
    notifyListeners();
  }

  void addNestedPair(String groupKey) {
    _nested.putIfAbsent(groupKey, () => <String, String>{});
    _nested[groupKey]![''] = '';
    notifyListeners();
  }

  void updateNestedKey(String groupKey, String oldKey, String newKey) {
    final Map<String, String> group = _nested[groupKey] ?? <String, String>{};
    if (group.containsKey(oldKey)) {
      final String val = group[oldKey] ?? '';
      group.remove(oldKey);
      group[newKey] = val;
      _nested[groupKey] = group;
      notifyListeners();
    }
  }

  void updateNestedValue(String groupKey, String key, String value) {
    _nested.putIfAbsent(groupKey, () => <String, String>{});
    _nested[groupKey]![key] = value;
    notifyListeners();
  }

  void removeNestedKey(String groupKey, String key) {
    final Map<String, String>? group = _nested[groupKey];
    group?.remove(key);
    notifyListeners();
  }

  Future<void> submit() async {
    if (_selectedType == null) return;
    if (!canSubmit) {
      _submitError = 'Please fill all required fields';
      notifyListeners();
      return;
    }
    _submitting = true;
    _submitError = '';
    notifyListeners();

    // Fold nested groups into details payload
    for (final MapEntry<String, Map<String, String>> entry in _nested.entries) {
      _details[entry.key] = entry.value;
    }

    try {
      _result = await _repo.addPaymentMethod(
        type: _selectedType!.type,
        // Name removed from UI; use the type's display name
        name: _selectedType!.name,
        details: _details,
        isDefault: _isDefault,
      );
    } catch (e) {
      _submitError = e.toString();
    } finally {
      _submitting = false;
      notifyListeners();
    }
  }
}