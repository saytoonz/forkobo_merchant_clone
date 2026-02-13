import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class WithdrawalNotificationButton extends StatelessWidget {
  const WithdrawalNotificationButton({
    super.key,
    required this.count,
    this.onTap,
  });

  final int count;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final bool showBadge = count > 0;

    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Material(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            onTap: onTap,
            child: const SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                Icons.notifications_none,
                size: 20,
                color: AppColors.black,
              ),
            ),
          ),
        ),
        if (showBadge)
          Positioned(
            right: -2,
            top: -2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: AppColors.paleGreen,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '$count',
                style:
                    Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ) ??
                    const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackText,
                    ),
              ),
            ),
          ),
      ],
    );
  }
}
