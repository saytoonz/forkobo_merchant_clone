import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forkobo_merchant/presentation/widget/circular_icon_btn.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/utilities.dart';
import '../../notifiers/auth_notifier.dart';
import '../../widget/app_button_one.dart';

class LoginMethodsScreen extends StatefulWidget {
  const LoginMethodsScreen({super.key});

  @override
  State<LoginMethodsScreen> createState() => _LoginMethodsScreenState();
}

class _LoginMethodsScreenState extends State<LoginMethodsScreen> {
  late AuthNotifier _authNotifier;
  bool _isConnecting = false;

  @override
  void initState() {
    super.initState();
    _authNotifier = context.read<AuthNotifier>();
  }

  Map<String, bool> get _connectedProviders {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return {'apple': false, 'google': false, 'email': false};

    final providerIds = user.providerData
        .map((info) => info.providerId)
        .toList();

    return {
      'apple': providerIds.contains('apple.com'),
      'google': providerIds.contains('google.com'),
      'email': providerIds.contains('password'), // Email/password provider
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Account Connections',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.blackText,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: CircularIconBtn(
            bgColor: AppColors.borderColor,
            onTap: () => context.pop(),
          ),
        ),
      ),
      body: Consumer<AuthNotifier>(
        builder: (context, authNotifier, child) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Connect additional login methods to your account for easier access.',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.grey,
                    height: 1.5,
                  ),
                ),
                const Gap(32),
                _buildConnectionOption(
                  title: 'Apple ID',
                  subtitle: 'Sign in with your Apple ID',
                  icon: Icons.apple,
                  provider: 'apple',
                  iconColor: AppColors.blackText,
                ),
                const Gap(16),
                _buildConnectionOption(
                  title: 'Google',
                  subtitle: 'Sign in with your Google account',
                  icon: Icons.g_mobiledata,
                  provider: 'google',
                  iconColor: Colors.red,
                ),
                const Gap(16),
                _buildConnectionOption(
                  title: 'Email & Password',
                  subtitle: 'Sign in with email and password',
                  icon: Icons.email_outlined,
                  provider: 'email',
                  iconColor: AppColors.primary,
                ),
                const Gap(40),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.primary.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: AppColors.primary,
                        size: 20,
                      ),
                      const Gap(12),
                      Expanded(
                        child: Text(
                          'You can use any connected method to sign in to your account. We recommend connecting at least two methods for account security.',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.primary,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildConnectionOption({
    required String title,
    required String subtitle,
    required IconData icon,
    required String provider,
    required Color iconColor,
  }) {
    final isConnected = _connectedProviders[provider] ?? false;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    subtitle,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(16),
            if (isConnected)
              SizedBox(
                width: 100,
                height: 32,
                child: AppButton(
                  title: 'Disconnect',
                  translateText: false,
                  bgColor: _canDisconnect ? Colors.red : AppColors.borderColor2,
                  textStyle: context.textTheme.bodySmall?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  radius: 16,
                  onTap: _canDisconnect
                      ? () => _showDisconnectDialog(provider)
                      : null,
                ),
              )
            else
              SizedBox(
                width: 80,
                height: 32,
                child: AppButton(
                  title: _isConnecting ? 'Linking...' : 'Connect',
                  translateText: false,
                  bgColor: _isConnecting
                      ? AppColors.borderColor2
                      : AppColors.primary.withValues(alpha: .6),
                  textStyle: context.textTheme.bodySmall?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  radius: 16,
                  onTap: _isConnecting
                      ? null
                      : () => _connectProvider(provider),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// Check if disconnection is allowed (at least one provider must remain)
  bool get _canDisconnect {
    final connectedCount = _connectedProviders.values
        .where((connected) => connected)
        .length;
    return connectedCount > 1;
  }

  /// Connects/links an additional authentication provider to the current user account.
  /// This method ensures account linking rather than account switching.
  void _connectProvider(String provider) async {
    if (_isConnecting) return; // Prevent multiple simultaneous connections

    setState(() {
      _isConnecting = true;
    });

    try {
      bool success = false;

      switch (provider) {
        case 'google':
          success = await _authNotifier.linkGoogleAccount();
          break;
        case 'apple':
          success = await _authNotifier.linkAppleAccount();
          break;
        case 'email':
          setState(() {
            _isConnecting = false;
          });
          _showEmailPasswordDialog();
          return;
      }

      if (success) {
        setState(() {});
        _showSuccessMessage('${provider.capitalize} connected successfully!');
      } else {
        // Error message is handled by AuthNotifier
        final errorMessage = _authNotifier.appUserUIState.error;
        if (errorMessage.isNotEmpty) {
          _showErrorMessage(errorMessage);
        }
      }
    } catch (e) {
      _showErrorMessage(
        'Failed to connect ${provider.capitalize}: ${e.toString()}',
      );
    } finally {
      setState(() {
        _isConnecting = false;
      });
    }
  }

  void _showEmailPasswordDialog() {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Connect Email & Password'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: emailController,
                style: context.textTheme.labelMedium,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
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
              const Gap(16),
              TextFormField(
                controller: passwordController,
                style: context.textTheme.labelMedium,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (!formKey.currentState!.validate()) return;

              Navigator.of(context).pop();

              try {
                final success = await _authNotifier.linkEmailPasswordAccount(
                  emailController.text.trim(),
                  passwordController.text,
                );

                if (success) {
                  setState(() {});
                  _showSuccessMessage(
                    'Email & Password connected successfully!',
                  );
                } else {
                  // Error message is handled by AuthNotifier
                  final errorMessage = _authNotifier.appUserUIState.error;
                  if (errorMessage.isNotEmpty) {
                    _showErrorMessage(errorMessage);
                  }
                }
              } catch (e) {
                _showErrorMessage(
                  'Failed to connect Email & Password: ${e.toString()}',
                );
              }
            },
            child: const Text('Connect'),
          ),
        ],
      ),
    );
  }

  void _showDisconnectDialog(String provider) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Disconnect ${provider.capitalize}'),
        content: Text(
          'Are you sure you want to disconnect ${provider.capitalize}? '
          'You may lose access to your account if this is your only sign-in method.',
          style: context.textTheme.labelSmall,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              await _disconnectProvider(provider);
            },
            child: const Text(
              'Disconnect',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _disconnectProvider(String provider) async {
    // Double-check that disconnection is allowed
    if (!_canDisconnect) {
      _showErrorMessage(
        'Cannot disconnect the last authentication method. '
        'Please connect another method first.',
      );
      return;
    }

    try {
      final user = _authNotifier.firebaseUser;
      if (user == null) return;

      String providerId;
      switch (provider) {
        case 'google':
          providerId = 'google.com';
          break;
        case 'apple':
          providerId = 'apple.com';
          break;
        case 'email':
          providerId = 'password';
          break;
        default:
          return;
      }

      await user.unlink(providerId);

      // Refresh UI state to reflect the disconnection
      setState(() {});

      _showSuccessMessage('${provider.capitalize} disconnected successfully!');
    } catch (e) {
      _showErrorMessage(
        'Failed to disconnect ${provider.capitalize}: ${e.toString()}',
      );
    }
  }

  void _showSuccessMessage(String message) {
    showSuccess(title: 'Success', msg: message);
  }

  void _showErrorMessage(String message) {
    showError(title: 'Error', msg: message);
  }
}
