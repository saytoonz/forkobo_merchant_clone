import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/utilities.dart';
import '../../../routes.dart';
import '../../notifiers/auth_notifier.dart';
import '../../notifiers/push_notification_notifier.dart';
import '../../widget/app_button_one.dart';
import '../../widget/app_text_field.dart';
import '../../widget/circular_icon_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool showPassword = false;

  late PushNotificationNotifier notificationNotifier;

  late AuthNotifier authNotifier;

  void _onSuccessLoggedIn() {
    if (!context.read<AuthNotifier>().isLoggedIn) return;
    notificationNotifier.setUpPushNotification();
    authNotifier.getAppUser();
    context.pushNamed(RouteConsts.index);
  }

  @override
  Widget build(BuildContext context) {
    authNotifier = context.watch<AuthNotifier>();
    notificationNotifier = context.watch<PushNotificationNotifier>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        actions: [
          CircularIconBtn(
            radius: 42,
            icon: Icon(Icons.close),
            bgColor: AppColors.borderColor2,
            onTap: () {
              context.pop();
            },
          ),
          const Gap(14),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kobo',
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: AppColors.primary,
                    fontFamily: 'PlayWriteHU',
                    fontWeight: FontWeight.w900,
                    fontSize: 42,
                  ),
                ),
                const Gap(60),
                AppTextField(
                  label: 'Email',
                  controller: _emailController,
                  labelSpace: 4,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val == null || !val.isEmail) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),

                const Gap(16),
                AppTextField(
                  controller: _passwordController,
                  label: 'Password',
                  labelSpace: 4,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: !showPassword,
                  suffixWidget: InkWell(
                    onTap: () => setState(() => showPassword = !showPassword),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        showPassword
                            ? 'assets/svg/eye-close.svg'
                            : 'assets/svg/eye-open.svg',
                        width: 22,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val == null || val.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),

                const Gap(24),
                AppButton(
                  title: 'Login',
                  translateText: false,
                  isLoading: authNotifier.appUserUIState.isLoading,
                  onTap: () async {
                    Vibrate.feedback(FeedbackType.light);
                    if (!_formKey.currentState!.validate()) return;

                    bool? isSuccess = await authNotifier.loginEmail(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    if (isSuccess == null) return;

                    if (isSuccess && context.mounted) {
                      _onSuccessLoggedIn();
                    } else {
                      showError(
                        title: 'Sorry!',
                        msg: authNotifier.appUserUIState.error,
                      );
                    }
                  },
                ),

                const Gap(16),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(RouteConsts.forgotPassword);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: context.textTheme.labelMedium?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const Gap(24),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.grey.withValues(alpha: .3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or continue with',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.grey.withValues(alpha: .3),
                      ),
                    ),
                  ],
                ),
                const Gap(24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () async {
                          Vibrate.feedback(FeedbackType.light);
                          bool? isSuccess = await authNotifier.loginGoogle();
                          if (isSuccess == null) return;
                          if (isSuccess && context.mounted) {
                            _onSuccessLoggedIn();
                            context.pop();
                          } else {
                            showError(msg: authNotifier.appUserUIState.error);
                          }
                        },
                        icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                        label: const Text('Google'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          side: BorderSide(
                            color: AppColors.grey.withValues(alpha: .3),
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () async {
                          Vibrate.feedback(FeedbackType.light);
                          bool? isSuccess = await authNotifier.loginApple();
                          if (isSuccess == null) return;
                          if (isSuccess && context.mounted) {
                            _onSuccessLoggedIn();
                          } else {
                            showError(
                              title: 'Error',
                              msg: authNotifier.appUserUIState.error,
                            );
                          }
                        },
                        icon: const Icon(Icons.apple, color: Colors.black),
                        label: const Text('Apple'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          side: BorderSide(
                            color: AppColors.grey.withValues(alpha: .3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(32),
                // Center(
                //   child: GestureDetector(
                //     onTap: () {
                //       context.pushNamed(RouteConsts.register);
                //     },
                //     child: RichText(
                //       text: TextSpan(
                //         style: context.textTheme.labelMedium?.copyWith(
                //           color: AppColors.grey,
                //         ),
                //         children: [
                //           const TextSpan(text: 'Don\'t have an account? '),
                //           TextSpan(
                //             text: 'Sign Up',
                //             style: TextStyle(
                //               color: AppColors.primary,
                //               fontWeight: FontWeight.w600,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                const Gap(40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
