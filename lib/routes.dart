import 'package:flutter/material.dart';
import 'package:forkobo_merchant/presentation/screens/profile/login_methods_screen.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:go_router/go_router.dart';

import 'presentation/screens/_auth/login_screen.dart';
import 'presentation/screens/index_screen.dart';
import 'presentation/screens/onboarding_screen.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/screens/withdrawals/payment_methods_screen.dart';
import 'presentation/screens/withdrawals/request_withdrawal_screen.dart';
import 'presentation/screens/withdrawals/withdrawals_screen.dart';
import 'presentation/widget/app_webview.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: RouteConsts.splash,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/walk-through',
        name: RouteConsts.walkThru,
        builder: (context, state) {
          return const OnboardingScreen();
        },
      ),

      GoRoute(
        path: '/login',
        name: RouteConsts.login,
        builder: (context, state) {
          return const LoginScreen();
        },
      ),

      GoRoute(
        path: '/index',
        name: RouteConsts.index,
        builder: (context, state) {
          return const IndexScreen();
        },
        routes: [
          GoRoute(
            path: 'withdrawals',
            name: RouteConsts.withdrawals,
            builder: (context, state) {
              return const WithdrawalsScreen();
            },
            routes: [
              GoRoute(
                path: 'request',
                name: RouteConsts.requestWithdrawal,
                builder: (context, state) {
                  return const RequestWithdrawalScreen();
                },
              ),
              GoRoute(
                path: 'payment-methods',
                name: RouteConsts.paymentMethods,
                builder: (context, state) {
                  return const PaymentMethodsScreen();
                },
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: '/login-methods',
        name: RouteConsts.loginMethods,
        builder: (context, state) {
          return const LoginMethodsScreen();
        },
      ),

      GoRoute(
        path: '/app-webview',
        name: RouteConsts.appWebview,
        builder: (context, state) {
          final data = state.extra as Map<String, Object?>;
          final title = data['title'] as String;
          final url = data['url'] as String;
          final onPop = data['onPop'] as Function()?;
          final onUrlChanged =
              data['onUrlChanged'] as Function(BuildContext, String)?;
          return AppWebview(
            title: title,
            url: url,
            onPop: onPop,
            onUrlChanged: onUrlChanged,
          );
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Unknown route',
          style: context.textTheme.labelMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

class RouteConsts {
  //* App Module
  static String splash = 'splash';
  static String walkThru = 'walk-through';
  static String login = 'login';
  static String register = 'register';
  static String forgotPassword = 'forgot-password';
  static String termsOfService = 'terms-of-service';
  static String privacyPolicy = 'privacy-policy';
  static String appWebview = 'app-webview-screen';

  static String index = 'index-screen';
  static String withdrawals = 'withdrawals-screen';
  static String requestWithdrawal = 'request-withdrawal-screen';
  static String paymentMethods = 'payment-methods-screen';
  static String loginMethods = 'login-methods-screen';
}
