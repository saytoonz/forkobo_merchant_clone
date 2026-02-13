import 'package:flutter/material.dart';
import 'package:forkobo_merchant/di.dart';
import 'package:forkobo_merchant/entity/ui_state/dashboard_ui_state.dart';
import 'package:forkobo_merchant/repository/repository.dart';

class DashboardNotifier with ChangeNotifier {
  DashboardNotifier() : _repository = getIt.get<Repository>();

  final Repository _repository;
  DashboardUIState _state = const DashboardUIState();

  DashboardUIState get state => _state;

  Future<void> loadDashboard({String? range = '24h'}) async {
    if (_state.isLoading) return;
    _state = _state.copyWith(isLoading: true, error: '');
    notifyListeners();
    try {
      final data = await _repository.getDashboard(
        range: range ?? _state.selectedRange,
      );

      _state = _state.copyWith(isLoading: false, data: data);
      notifyListeners();
    } catch (e) {
      _state = _state.copyWith(isLoading: false, error: e.toString());
      notifyListeners();
    }
  }

  void setRange(String range) {
    if (_state.selectedRange == range) return;
    _state = _state.copyWith(selectedRange: range);
    notifyListeners();
    // Automatically reload when range changes
    loadDashboard(range: range);
  }
}
