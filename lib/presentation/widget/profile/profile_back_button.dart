import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class ProfileBackButton extends StatelessWidget {
  const ProfileBackButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.borderColor,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap ?? () => Navigator.of(context).maybePop(),
        child: const SizedBox(
          height: 44,
          width: 44,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
