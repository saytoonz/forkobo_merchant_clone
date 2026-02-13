import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../widget/app_text_field.dart';
import '../../widget/app_button_one.dart';
import '../../notifiers/auth_notifier.dart';
import '../../notifiers/push_notification_notifier.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/extensions.dart';
import '../../../utils/utilities.dart';
import '../../../routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _acceptTerms = false;
  bool _isLoading = false;
  bool _isGoogleLoading = false;
  bool _isAppleLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _handleRegistration() async {
    if (!_formKey.currentState!.validate()) return;
    if (!_acceptTerms) {
      showError(
        title: 'Terms Required',
        msg:
            'Please accept the Terms of Service and Privacy Policy to continue.',
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final authNotifier = context.read<AuthNotifier>();
    final result = await authNotifier.registerCustomerWithEmail(
      _emailController.text.trim(),
      _passwordController.text,
      _nameController.text.trim(),
    );

    setState(() {
      _isLoading = false;
    });

    if (result == true) {
      if (mounted) {
        showSuccess(
          title: 'Registration Successful',
          msg:
              'Account created successfully! Please check your email to verify your account.',
        );
        context.pushReplacementNamed(RouteConsts.login);
      }
    } else if (result == false) {
      // Error is already handled by AuthNotifier and shown via showError
      final error = authNotifier.appUserUIState.error;
      if (error.isNotEmpty && mounted) {
        showError(title: 'Registration Failed', msg: error);
      }
    }
  }

  Future<void> _handleGoogleSignUp() async {
    setState(() {
      _isGoogleLoading = true;
    });

    Vibrate.feedback(FeedbackType.light);
    final authNotifier = context.read<AuthNotifier>();
    final notificationNotifier = context.read<PushNotificationNotifier>();

    bool? isSuccess = await authNotifier.loginGoogle();

    setState(() {
      _isGoogleLoading = false;
    });

    if (isSuccess == null) return;

    if (isSuccess && mounted) {
      notificationNotifier.setUpPushNotification();
      showSuccess(
        title: 'Registration Successful',
        msg: 'Welcome! Your account has been created successfully.',
      );
      context.pushReplacementNamed(RouteConsts.index);
    } else {
      showError(
        title: 'Google Sign Up Failed',
        msg: authNotifier.appUserUIState.error,
      );
    }
  }

  Future<void> _handleAppleSignUp() async {
    setState(() {
      _isAppleLoading = true;
    });

    Vibrate.feedback(FeedbackType.light);
    final authNotifier = context.read<AuthNotifier>();
    final notificationNotifier = context.read<PushNotificationNotifier>();

    bool? isSuccess = await authNotifier.loginApple();

    setState(() {
      _isAppleLoading = false;
    });

    if (isSuccess == null) return;

    if (isSuccess && mounted) {
      notificationNotifier.setUpPushNotification();
      showSuccess(
        title: 'Registration Successful',
        msg: 'Welcome! Your account has been created successfully.',
      );
      context.pushReplacementNamed(RouteConsts.index);
    } else {
      showError(
        title: 'Apple Sign Up Failed',
        msg: authNotifier.appUserUIState.error,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthNotifier>(
      builder: (context, authNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.black),
              onPressed: () => context.pop(),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Create Account',
                      style: context.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Join Kobo and start shopping',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge?.copyWith(color: AppColors.grey),
                    ),
                    const SizedBox(height: 40),
                    AppTextField(
                      controller: _nameController,
                      hintText: 'Full Name',
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your full name';
                        }
                        if (value.trim().length < 2) {
                          return 'Name must be at least 2 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    AppTextField(
                      controller: _emailController,
                      hintText: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.isEmail) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    AppTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: !_isPasswordVisible,
                      suffixWidget: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    AppTextField(
                      controller: _confirmPasswordController,
                      hintText: 'Confirm Password',
                      obscureText: !_isConfirmPasswordVisible,
                      suffixWidget: IconButton(
                        icon: Icon(
                          _isConfirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordVisible =
                                !_isConfirmPasswordVisible;
                          });
                        },
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Checkbox(
                          value: _acceptTerms,
                          onChanged: (value) {
                            setState(() {
                              _acceptTerms = value ?? false;
                            });
                          },
                          activeColor: AppColors.primary,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _acceptTerms = !_acceptTerms;
                              });
                            },
                            child: RichText(
                              text: TextSpan(
                                style: context.textTheme.labelMedium?.copyWith(
                                  color: AppColors.grey,
                                ),
                                children: [
                                  const TextSpan(text: 'I agree to the '),
                                  TextSpan(
                                    text: 'Terms of Service',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        context.pushNamed(
                                          RouteConsts.termsOfService,
                                        );
                                      },
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  const TextSpan(text: ' and '),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        context.pushNamed(
                                          RouteConsts.privacyPolicy,
                                        );
                                      },
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    AppButton(
                      title: 'Create Account',
                      translateText: false,
                      isLoading:
                          _isLoading || authNotifier.appUserUIState.isLoading,
                      onTap:
                          (_isLoading || authNotifier.appUserUIState.isLoading)
                          ? null
                          : _handleRegistration,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.grey.withValues(alpha: 0.3),
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
                            color: AppColors.grey.withValues(alpha: 0.3),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            title: 'Google',
                            translateText: false,
                            isNegative: true,
                            isLoading: _isGoogleLoading,
                            leading: const Icon(
                              Icons.g_mobiledata,
                              color: Colors.red,
                              size: 24,
                            ),
                            onTap:
                                (_isLoading ||
                                    authNotifier.appUserUIState.isLoading ||
                                    _isGoogleLoading ||
                                    _isAppleLoading)
                                ? null
                                : _handleGoogleSignUp,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: AppButton(
                            title: 'Apple',
                            translateText: false,
                            isNegative: true,
                            isLoading: _isAppleLoading,
                            leading: const Icon(
                              Icons.apple,
                              color: Colors.black,
                              size: 24,
                            ),
                            onTap:
                                (_isLoading ||
                                    authNotifier.appUserUIState.isLoading ||
                                    _isGoogleLoading ||
                                    _isAppleLoading)
                                ? null
                                : _handleAppleSignUp,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: GestureDetector(
                        onTap: () => context.pop(),
                        child: RichText(
                          text: TextSpan(
                            style: context.textTheme.labelMedium?.copyWith(
                              color: AppColors.grey,
                            ),
                            children: [
                              const TextSpan(text: 'Already have an account? '),
                              TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
