import '../entity/app_user.dart';
import '../entity/dashboard.dart';
import '../entity/merchant_store.dart';
import '../entity/store_activity.dart';
import '../entity/category.dart';
import '../entity/store_details.dart';
import '../entity/withdrawal.dart';
import '../entity/wallet.dart';
import '../entity/payment_method_type.dart';
import '../entity/payment_method.dart';

abstract class Repository {
  Future<void> refreshUserFCMToken(String token);

  Future<AppUser> getAppUser();
  Future<AppUser> updateUserName({required String name});

  /// Fetches dashboard data for the merchant. Optional range filters data
  /// such as '24h', '3d', '1w', '2w', '1m', '3m'.
  Future<DashboardResponse> getDashboard({String? range});

  /// Fetches all merchant stores.
  Future<List<MerchantStore>> getStores();

  /// Fetches activities for a given store with pagination.
  Future<List<StoreActivity>> getStoreActivities({
    required String storeId,
    int page,
    int perPage,
  });

  /// Fetches all product categories.
  Future<List<Category>> getCategories();

  /// Updates a store's info (name and/or selected categories).
  Future<MerchantStore> updateStore({
    required String storeId,
    String? storeName,
    List<String>? selectedCategories,
  });

  /// Fetches full store details including analytics and last payout.
  Future<StoreDetailsResponse> getStoreDetails({
    required String storeId,
  });

  /// Fetches withdrawals history for the merchant.
  Future<List<Withdrawal>> getWithdrawals({
    int page = 1,
    int perPage = 15,
  });

  /// Fetches wallet balances and payout info for the merchant.
  Future<Wallet> getWallet();

  /// Fetches available payment method types and their required fields.
  Future<List<PaymentMethodType>> getPaymentMethodTypes();

  /// Adds a new payment method with dynamic details.
  Future<PaymentMethod> addPaymentMethod({
    required String type,
    required String name,
    required Map<String, dynamic> details,
    required bool isDefault,
  });

  /// Fetches all payment methods for the merchant.
  Future<List<PaymentMethod>> getPaymentMethods();

  /// Creates a withdrawal request.
  Future<Withdrawal> createWithdrawal({
    required num amount,
    required String paymentMethodId,
    String? notes,
  });
}
