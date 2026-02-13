import '../../di.dart';
import '../../routes.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '../notifiers/auth_notifier.dart';
import 'package:go_router/go_router.dart';
import '../widget/app_animated_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.showLoading = true});

  final bool showLoading;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AuthNotifier authNotifier;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      authNotifier.getAppUser();
      await Future.delayed(const Duration(seconds: 2));
      if (!mounted) return;
      if (authNotifier.firebaseUser != null) {
        context.goNamed(RouteConsts.index);
        return;
      }
      bool showWalkThru = prefs.getBool(PrefKeys.showWalkThru) ?? true;
      if (showWalkThru) {
        context.goNamed(RouteConsts.walkThru);
      } else {
        context.goNamed(RouteConsts.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    authNotifier = context.watch<AuthNotifier>();

    return Scaffold(body: AppAnimatedLogo(showLoading: widget.showLoading));
  }
}
