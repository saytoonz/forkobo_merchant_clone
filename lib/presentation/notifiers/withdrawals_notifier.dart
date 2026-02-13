import 'package:flutter/foundation.dart';

import '../../di.dart';
import '../../repository/repository.dart';
import '../../entity/withdrawal.dart';
import '../../entity/wallet.dart';

class WithdrawalsNotifier extends ChangeNotifier {
  final Repository _repo = getIt.get<Repository>();

  bool _isLoading = false;
  String _error = '';
  List<Withdrawal> _items = <Withdrawal>[];
  Wallet? _wallet;
  bool _walletLoading = false;
  String _walletError = '';

  bool get isLoading => _isLoading;
  String get error => _error;
  List<Withdrawal> get items => _items;
  Wallet? get wallet => _wallet;
  bool get walletLoading => _walletLoading;
  String get walletError => _walletError;

  Future<void> load({int page = 1, int perPage = 15}) async {
    if (_isLoading) return;
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      final List<Withdrawal> fetched = await _repo.getWithdrawals(page: page, perPage: perPage);
      _items = fetched;
    } catch (e) {
      _error = e.toString();
      _items = <Withdrawal>[];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadWallet() async {
    if (_walletLoading) return;
    _walletLoading = true;
    _walletError = '';
    notifyListeners();

    try {
      _wallet = await _repo.getWallet();
    } catch (e) {
      _walletError = e.toString();
      _wallet = null;
    } finally {
      _walletLoading = false;
      notifyListeners();
    }
  }
}