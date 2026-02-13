import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import '/repository/repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../di.dart';
// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';

class PushNotificationNotifier with ChangeNotifier {
  FirebaseAuth get _firebaseAuth => getIt.get<FirebaseAuth>();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  Repository get _repository => getIt.get<Repository>();

  BuildContext? context;

  void setUpPushNotification({BuildContext? context}) async {
    if (_firebaseAuth.currentUser == null) return;
    if (this.context == null) this.context = context;
    notifyListeners();

    await refreshToken();
    setupInteractedMessage();
    setupForegroundNotification();
  }

  Future<void> refreshToken() async {
    // Skip on web, or during iOS simulator when APNS token isn't available yet
    if (kIsWeb) return;

    await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );

    try {
      // On iOS, ensure APNS token exists before attempting to fetch FCM token
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        // If APNS token is not available (e.g. iOS Simulator), skip fetching FCM token to avoid crash
        final apnsToken = await messaging.getAPNSToken();
        if (apnsToken == null) {
          return;
        }
      }
    } catch (_) {
      // Platform may not support Platform.isIOS (e.g. web), or messaging APIs might throw; ignore safely
    }

    String? fcmToken;
    try {
      fcmToken = await messaging.getToken();
    } catch (e) {
      // Ignore token retrieval failures on unsupported environments
      logger.w('FCM getToken failed: $e');
      return;
    }

    if (fcmToken == null || _firebaseAuth.currentUser == null) return;
    try {
      await _repository.refreshUserFCMToken(fcmToken);
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> clearToken() async {
    if (_firebaseAuth.currentUser == null) return;
    await _repository.refreshUserFCMToken(_firebaseAuth.currentUser!.uid);
  }

  Future<void> setupInteractedMessage() async {
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> setupForegroundNotification() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          // alert: false, // Required to display a heads up notification
          // badge: false,
          // sound: true,
          alert: true,
          badge: true,
          sound: true,
        );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      if (notification != null) {
        bool canVibrate = await Vibrate.canVibrate;
        if (canVibrate) {
          Vibrate.feedback(FeedbackType.error);
        }
        // List<Color> colors = colorList(message.data['notificationKey']);
        // showOverlayNotification((context) {
        //   return InAppNotificationWidget(
        //     title: notification.title ?? 'Preggy Health!',
        //     message: notification.body ?? '',
        //     fgColor: colors[0],
        //     bgColor: colors[1],
        //     onReplay: () {
        //       OverlaySupportEntry.of(context)?.dismiss();
        //       _handleMessage(message);
        //     },
        //   );
        // }, duration: const Duration(seconds: 7));
      }
    });
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    final notificationKey = message.data['notificationKey'];
    logger.d(notificationKey);
  }
}
