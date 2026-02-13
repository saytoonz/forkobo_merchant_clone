import 'dart:async';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'firebase_options.dart';
import 'repository/repository.dart';
import 'repository/repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info_plus/package_info_plus.dart';

final getIt = GetIt.instance;

final logger = getIt.get<Logger>();
final prefs = getIt.get<SharedPreferences>();
final shorebird = getIt.get<ShorebirdUpdater>();
final packageInfo = getIt.get<PackageInfo>();

typedef AuthTokenGetter = FutureOr<String?> Function();

Future<String?> getFirebaseToken() async {
  final user = getIt.get<FirebaseAuth>().currentUser;
  if (user == null) return null;

  try {
    String? token = await user.getIdToken();
    return (token ?? '').isNotEmpty ? 'Bearer $token' : null;
  } catch (e) {
    return null;
  }
}

Future<void> diSetup() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);
  getIt.registerSingleton<ShorebirdUpdater>(ShorebirdUpdater());

  final info = await PackageInfo.fromPlatform();
  getIt.registerSingleton<PackageInfo>(info);

  getIt.registerLazySingleton<AuthTokenGetter>(() {
    return () => getFirebaseToken();
  });
  getIt.registerSingleton<Logger>(Logger());

  getIt.registerLazySingleton<Dio>(() {
    // var baseUrl = 'https://api.forkobo.tech/api';
    var baseUrlDev = 'https://dev-api.forkobo.tech/api';
    return Dio(BaseOptions(baseUrl: baseUrlDev));
  });

  dependenciesInj();
}

void dependenciesInj() {
  getIt.registerLazySingleton<Repository>(
    () => RepositoryImpl(
      getIt.get(),
      token: getIt.get(),
      uid: getIt<FirebaseAuth>().currentUser?.uid,
    ),
  );
}
