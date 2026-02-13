import 'package:flutter/material.dart';
import 'package:forkobo_merchant/presentation/widget/image_loader.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:provider/provider.dart';

import '../../notifiers/auth_notifier.dart';
import 'profile_action_tile.dart';

class ProfileInfoCard extends StatefulWidget {
  const ProfileInfoCard({super.key, this.onEditProfile});

  final VoidCallback? onEditProfile;

  @override
  State<ProfileInfoCard> createState() => _ProfileInfoCardState();
}

class _ProfileInfoCardState extends State<ProfileInfoCard> {
  @override
  Widget build(BuildContext context) {
    final authNotifier = context.watch<AuthNotifier>();

    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle nameStyle =
        textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
    final TextStyle emailStyle =
        textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 13, color: AppColors.grey);

    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                ImageLoader(
                  imageUrl: authNotifier.userImage,
                  radius: 56,
                  fit: BoxFit.cover,
                  height: 56,
                  width: 56,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(authNotifier.userName, style: nameStyle),
                      const SizedBox(height: 4),
                      Text(authNotifier.emailOrPhone, style: emailStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, thickness: 1, color: AppColors.borderColor),
          ProfileActionTile(
            label: 'Edit profile',
            leading: const Icon(
              Icons.edit_outlined,
              size: 20,
              color: AppColors.black,
            ),
            onTap: () async {
              widget.onEditProfile?.call();
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
