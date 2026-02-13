import '../di.dart';
import 'package:dio/dio.dart';
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
import '/repository/repository.dart';
import '/utils/extensions.dart';

class RepositoryImpl implements Repository {
  final AuthTokenGetter _getToken;
  final String? _firebaseUid;
  final Dio _dioInstance;

  RepositoryImpl(
    this._dioInstance, {
    required AuthTokenGetter token,
    required String? uid,
  }) : _getToken = token,
       _firebaseUid = uid;

  @override
  Future<bool> refreshUserFCMToken(String token) async {
    try {
      if (_firebaseUid == null) return false;

      final result = (await _dioInstance.put(
        '/user/fcm-token',
        data: {'fcm_token': token},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        return true;
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<AppUser> getAppUser() async {
    try {
      final result = (await _dioInstance.get(
        '/user/profile',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        return AppUser.fromJson(result.data['data']);
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<AppUser> updateUserName({required String name}) async {
    try {
      final result = (await _dioInstance.put(
        '/user/name',
        data: {'name': name},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        return AppUser.fromJson(result.data['data']);
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<DashboardResponse> getDashboard({String? range}) async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/dashboard/analytics',
        queryParameters: range == null ? null : {'period': range},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        return DashboardResponse.fromJson(result.data);
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<MerchantStore>> getStores() async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/stores',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final List<dynamic> storesJson = (data is Map<String, dynamic>)
            ? (data['stores'] as List<dynamic>? ?? [])
            : [];
        return storesJson
            .map((e) => MerchantStore.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<StoreActivity>> getStoreActivities({
    required String storeId,
    int page = 1,
    int perPage = 15,
  }) async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/stores/$storeId/activities',
        queryParameters: {'page': page, 'per_page': perPage},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final List<dynamic> activitiesJson = (data is Map<String, dynamic>)
            ? (data['data'] as List<dynamic>? ?? [])
            : [];
        return activitiesJson
            .map((e) => StoreActivity.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Category>> getCategories() async {
    try {
      final result = (await _dioInstance.get(
        '/categories',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final List<dynamic> categoriesJson = (data is Map<String, dynamic>)
            ? (data['data'] as List<dynamic>? ?? [])
            : [];
        return categoriesJson
            .map((e) => Category.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<MerchantStore> updateStore({
    required String storeId,
    String? storeName,
    List<String>? selectedCategories,
  }) async {
    try {
      final Map<String, dynamic> body = <String, dynamic>{};
      if (storeName != null) body['store_name'] = storeName;
      if (selectedCategories != null) {
        body['selected_categories'] = selectedCategories;
      }

      final result = (await _dioInstance.put(
        '/merchant/stores/$storeId',
        data: body,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final Map<String, dynamic> storeJson = (data is Map<String, dynamic>)
            ? (data['store'] as Map<String, dynamic>? ?? <String, dynamic>{})
            : <String, dynamic>{};
        if (storeJson.isEmpty) {
          return MerchantStore(
            id: storeId,
            storeName: storeName ?? '',
            managementType: null,
            status: null,
            platform: null,
            wentLiveAt: null,
            expiresAt: null,
            payoutSummary: null,
          );
        }
        return MerchantStore.fromJson(storeJson);
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<StoreDetailsResponse> getStoreDetails({
    required String storeId,
  }) async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/stores/$storeId/details',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        if (data is Map<String, dynamic>) {
          return StoreDetailsResponse.fromJson(data);
        } else {
          throw 'Invalid response format';
        }
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Withdrawal>> getWithdrawals({
    int page = 1,
    int perPage = 15,
  }) async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/withdrawals',
        queryParameters: {'page': page, 'per_page': perPage},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final List<dynamic> items = (data is Map<String, dynamic>)
            ? (data['data'] as List<dynamic>? ?? [])
            : [];
        return items
            .map((e) => Withdrawal.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Wallet> getWallet() async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/wallet',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        if (data is Map<String, dynamic>) {
          return Wallet.fromJson(data);
        } else {
          // Some APIs wrap payload in { data: {...} }
          final inner = (data as Map?)?['data'];
          return Wallet.fromJson(
            (inner as Map<String, dynamic>?) ?? <String, dynamic>{},
          );
        }
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<PaymentMethodType>> getPaymentMethodTypes() async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/payment-methods/types',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final List<dynamic> typesJson = (data is Map<String, dynamic>)
            ? (data['types'] as List<dynamic>? ??
                  (data['data'] as List<dynamic>? ?? []))
            : [];
        return typesJson
            .map((e) => PaymentMethodType.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<PaymentMethod> addPaymentMethod({
    required String type,
    required String name,
    required Map<String, dynamic> details,
    required bool isDefault,
  }) async {
    try {
      final result = (await _dioInstance.post(
        '/merchant/payment-methods',
        data: {
          'type': type,
          'name': name,
          'details': details,
          'is_default': isDefault,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final Map<String, dynamic> pmJson = (data is Map<String, dynamic>)
            ? (data['payment_method'] as Map<String, dynamic>? ??
                  (data['data'] as Map<String, dynamic>? ??
                      <String, dynamic>{}))
            : <String, dynamic>{};
        return PaymentMethod.fromJson(pmJson);
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<PaymentMethod>> getPaymentMethods() async {
    try {
      final result = (await _dioInstance.get(
        '/merchant/payment-methods',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        List<dynamic> list = <dynamic>[];
        if (data is List<dynamic>) {
          list = data;
        } else if (data is Map<String, dynamic>) {
          list =
              data['payment_methods'] as List<dynamic>? ??
              data['data'] as List<dynamic>? ??
              <dynamic>[];
        }
        return list
            .map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Withdrawal> createWithdrawal({
    required num amount,
    required String paymentMethodId,
    String? notes,
  }) async {
    try {
      final result = (await _dioInstance.post(
        '/merchant/withdrawals',
        data: {
          'amount': amount,
          'payment_method_id': paymentMethodId,
          if (notes != null && notes.isNotEmpty) 'notes': notes,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': await _getToken.call(),
            'X-Firebase-UID': _firebaseUid,
          },
        ),
      ));

      if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) < 300) {
        final data = result.data;
        final Map<String, dynamic> wJson = (data is Map<String, dynamic>)
            ? (data['withdrawal'] as Map<String, dynamic>? ??
                  (data['data'] as Map<String, dynamic>? ??
                      <String, dynamic>{}))
            : <String, dynamic>{};
        return Withdrawal.fromJson(wJson);
      } else if ((result.statusCode ?? 0) == 400) {
        throw result.data['error']?['message'] ??
            'Insufficient balance or invalid request';
      } else if ((result.statusCode ?? 0) == 422) {
        throw result.data['error']?['message'] ?? 'Validation error';
      } else {
        throw result.data['error']?['message'] ?? 'Unknown error occurred';
      }
    } on DioException catch (e) {
      throw e.formattedError;
    } catch (e) {
      throw e.toString();
    }
  }
}
