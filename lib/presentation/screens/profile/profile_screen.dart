import 'package:flutter/material.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_action_tile.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_info_card.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_section_card.dart';
import 'package:forkobo_merchant/presentation/notifiers/auth_notifier.dart';
import 'package:forkobo_merchant/routes.dart';

import '../../../utils/utilities.dart';
import '../../widget/app_button_one.dart';
import '../../widget/app_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final authNotifier = context.watch<AuthNotifier>();
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle headerStyle =
        textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Profile', style: headerStyle),
            const SizedBox(height: 24),
            ProfileInfoCard(
              onEditProfile: () async {
                await openFamilySheet(
                  context: context,
                  content: (ctx) {
                    return UpdateUsername();
                  },
                );
                setState(() {});
              },
            ),
            const SizedBox(height: 24),
            // ProfileSectionCard(
            //   children: <Widget>[
            //     ProfileActionTile(
            //       label: 'Financials',
            //       leading: const Icon(
            //         Icons.account_balance_wallet_outlined,
            //         size: 20,
            //         color: AppColors.black,
            //       ),
            //       onTap: () {
            //         Navigator.of(context).push(
            //           MaterialPageRoute<void>(
            //             builder: (_) => const ProfileFinancialsScreen(),
            //           ),
            //         );
            //       },
            //     ),
            //     ProfileActionTile(
            //       label: 'Subscriptions',
            //       leading: const Icon(
            //         Icons.subscriptions_outlined,
            //         size: 20,
            //         color: AppColors.black,
            //       ),
            //       onTap: () {
            //         Navigator.of(context).push(
            //           MaterialPageRoute<void>(
            //             builder: (_) => const ProfileSubscriptionsScreen(),
            //           ),
            //         );
            //       },
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 16),
            ProfileSectionCard(
              children: <Widget>[
                // const ProfileActionTile(
                //   label: 'Notification settings',
                //   leading: Icon(
                //     Icons.notifications_outlined,
                //     size: 20,
                //     color: AppColors.black,
                //   ),
                // ),
                ProfileActionTile(
                  label: 'Edit login methods',
                  leading: Icon(
                    Icons.password_outlined,
                    size: 20,
                    color: AppColors.black,
                  ),
                  onTap: () => context.pushNamed(RouteConsts.loginMethods),
                ),
                ProfileActionTile(
                  label: 'Sign out',
                  leading: const Icon(
                    Icons.logout,
                    size: 20,
                    color: AppColors.red,
                  ),
                  textColor: AppColors.red,
                  onTap: () async {
                    final result = await FlutterPlatformAlert.showCustomAlert(
                      windowTitle: 'Attention!',
                      text: 'Do you really want to sign out from this device?',
                      positiveButtonTitle: 'Yes',
                      negativeButtonTitle: 'Cancel',
                    );
                    if (result == CustomButton.positiveButton &&
                        context.mounted) {
                      authNotifier.signOut(context);
                      context.goNamed(RouteConsts.login);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateUsername extends StatefulWidget {
  const UpdateUsername({super.key});

  @override
  State<UpdateUsername> createState() => _UpdateUsernameState();
}

class _UpdateUsernameState extends State<UpdateUsername> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final authNotifier = context.watch<AuthNotifier>();

    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit Profile',
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackText,
                  ),
                ),
                IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.close, color: AppColors.grey),
                ),
              ],
            ),
            const Gap(24),
            Text(
              'Full Name',
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.blackText,
              ),
            ),
            const Gap(8),

            AppTextField(
              controller: nameController,
              initialValue:
                  authNotifier.appUser?.name ??
                  authNotifier.firebaseUser?.displayName ??
                  '',
              labelSpace: 4,
              keyboardType: TextInputType.emailAddress,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Full name is required';
                }
                return null;
              },
            ),
            const Gap(24),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                title: 'Update Name',
                translateText: false,
                bgColor: AppColors.primary,
                isLoading: isLoading,
                textStyle: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                radius: 12,
                onTap: () async {
                  if (!formKey.currentState!.validate()) return;

                  setState(() => isLoading = true);
                  bool resp = await authNotifier.updateUserName(
                    name: nameController.text,
                  );
                  setState(() => isLoading = false);

                  if (resp == true) {
                    if (context.mounted) context.pop();
                    toast('Account name has been updated');
                    setState(() {});
                  }
                },
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
