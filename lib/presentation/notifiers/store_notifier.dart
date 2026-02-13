import 'package:flutter/foundation.dart';

import '../../di.dart';
import '../../entity/merchant_store.dart';
import '../../repository/repository.dart';
import '../../entity/store_activity.dart';
import '../../entity/store_details.dart';

class StoreNotifier extends ChangeNotifier {
  StoreNotifier() {
    // Eager load optional; can be triggered explicitly from screen.
  }

  final Repository _repo = getIt.get<Repository>();

  bool _isLoading = false;
  String _error = '';
  List<MerchantStore> _stores = <MerchantStore>[];
  String? _selectedStoreId;
  // Activities state
  bool _activitiesLoading = false;
  String _activitiesError = '';
  List<StoreActivity> _activities = <StoreActivity>[];
  // Store details state
  bool _detailsLoading = false;
  String _detailsError = '';
  StoreDetailsResponse? _details;

  bool get isLoading => _isLoading;
  String get error => _error;
  List<MerchantStore> get stores => _stores;
  String? get selectedStoreId => _selectedStoreId;
  MerchantStore? get selectedStore {
    try {
      return _stores.firstWhere((s) => s.id == _selectedStoreId);
    } catch (_) {
      return null;
    }
  }
  // Activities getters
  bool get activitiesLoading => _activitiesLoading;
  String get activitiesError => _activitiesError;
  List<StoreActivity> get activities => _activities;
  // Details getters
  bool get detailsLoading => _detailsLoading;
  String get detailsError => _detailsError;
  StoreDetailsResponse? get details => _details;
  
  Future<void> updateSelectedStore({
    String? storeName,
    List<String>? selectedCategories,
  }) async {
    final String? id = _selectedStoreId;
    if (id == null) return;
    try {
      final MerchantStore updated = await _repo.updateStore(
        storeId: id,
        storeName: storeName,
        selectedCategories: selectedCategories,
      );
      // Merge updated store name into existing selected store
      final MerchantStore? existing = selectedStore;
      if (existing != null) {
        final MerchantStore merged = MerchantStore(
          id: existing.id,
          storeName: (updated.storeName.isNotEmpty)
              ? updated.storeName
              : existing.storeName,
          managementType: existing.managementType,
          status: existing.status,
          platform: existing.platform,
          wentLiveAt: existing.wentLiveAt,
          expiresAt: existing.expiresAt,
          payoutSummary: existing.payoutSummary,
        );
        _stores = _stores.map((s) => s.id == id ? merged : s).toList();
      }
      notifyListeners();
      await loadDetailsForStore(id);
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> loadStores() async {
    if (_isLoading) return;
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      final List<MerchantStore> fetched = await _repo.getStores();
      _stores = fetched;

      // Determine last active store from prefs; fallback to first.
      final String? lastId = prefs.getString('last_active_store_id');
      if (lastId != null && fetched.any((s) => s.id == lastId)) {
        _selectedStoreId = lastId;
      } else {
        _selectedStoreId = fetched.isNotEmpty ? fetched.first.id : null;
        if (_selectedStoreId != null) {
          await prefs.setString('last_active_store_id', _selectedStoreId!);
        }
      }
      // Load activities for selected store
      if (_selectedStoreId != null) {
        await loadActivitiesForStore(_selectedStoreId!);
        await loadDetailsForStore(_selectedStoreId!);
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> selectStoreById(String storeId) async {
    if (_selectedStoreId == storeId) return;
    _selectedStoreId = storeId;
    await prefs.setString('last_active_store_id', storeId);
    notifyListeners();
    await loadActivitiesForStore(storeId);
    await loadDetailsForStore(storeId);
  }

  Future<void> loadActivitiesForStore(String storeId, {int page = 1, int perPage = 15}) async {
    if (_activitiesLoading) return;
    _activitiesLoading = true;
    _activitiesError = '';
    notifyListeners();

    try {
      final List<StoreActivity> fetched = await _repo.getStoreActivities(
        storeId: storeId,
        page: page,
        perPage: perPage,
      );
      _activities = fetched;
    } catch (e) {
      _activitiesError = e.toString();
      _activities = <StoreActivity>[];
    } finally {
      _activitiesLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadDetailsForStore(String storeId) async {
    if (_detailsLoading) return;
    _detailsLoading = true;
    _detailsError = '';
    notifyListeners();

    try {
      final StoreDetailsResponse fetched = await _repo.getStoreDetails(storeId: storeId);
      _details = fetched;
    } catch (e) {
      _detailsError = e.toString();
      _details = null;
    } finally {
      _detailsLoading = false;
      notifyListeners();
    }
  }
}