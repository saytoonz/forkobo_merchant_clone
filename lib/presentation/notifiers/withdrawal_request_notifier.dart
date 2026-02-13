import 'package:flutter/material.dart';

import 'package:forkobo_merchant/entity/withdrawal.dart';
import 'package:forkobo_merchant/repository/repository.dart';
import '../../di.dart';

class WithdrawalRequestNotifier extends ChangeNotifier {
  WithdrawalRequestNotifier() : _repo = getIt.get<Repository>();

  final Repository _repo;

  num _amount = 0;
  String? _paymentMethodId;
  String? _notes;

  bool _submitting = false;
  String? _error;
  Withdrawal? _result;

  num get amount => _amount;
  String? get paymentMethodId => _paymentMethodId;
  String? get notes => _notes;
  bool get submitting => _submitting;
  String? get error => _error;
  Withdrawal? get result => _result;

  bool get canSubmit => !_submitting && _amount > 0 && (_paymentMethodId?.isNotEmpty ?? false);

  void setAmountText(String value) {
    final v = value.replaceAll(',', '').replaceAll(RegExp(r'[^0-9\.]'), '');
    try {
      _amount = v.isEmpty ? 0 : num.parse(v);
    } catch (_) {
      _amount = 0;
    }
    notifyListeners();
  }

  void setMethodId(String? id) {
    _paymentMethodId = id;
    notifyListeners();
  }

  void setNotes(String? value) {
    _notes = (value == null || value.isEmpty) ? null : value;
    notifyListeners();
  }

  Future<void> submit() async {
    if (!canSubmit) return;
    _submitting = true;
    _error = null;
    _result = null;
    notifyListeners();

    try {
      final w = await _repo.createWithdrawal(
        amount: _amount,
        paymentMethodId: _paymentMethodId!,
        notes: _notes,
      );
      _result = w;
    } catch (e) {
      _error = e.toString();
    } finally {
      _submitting = false;
      notifyListeners();
    }
  }
}