import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

import 'app.dart';
import 'di.dart';
import 'presentation/notifiers/auth_notifier.dart';
import 'presentation/notifiers/push_notification_notifier.dart';
import 'presentation/notifiers/dashboard_notifier.dart';
import 'presentation/notifiers/store_notifier.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  await diSetup();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('fr', 'FR')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      useOnlyLangCode: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthNotifier()),
          ChangeNotifierProvider(create: (_) => PushNotificationNotifier()),
          ChangeNotifierProvider(create: (_) => DashboardNotifier()),
          ChangeNotifierProvider(create: (_) => StoreNotifier()),
        ],
        child: const App(),
      ),
    ),
  );
}
