import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class ProfileActionTile extends StatelessWidget {
  const ProfileActionTile({
    super.key,
    required this.label,
    this.leading,
    this.onTap,
    this.textColor,
    this.trailing,
  });

  final String label;
  final Widget? leading;
  final VoidCallback? onTap;
  final Color? textColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: textColor ?? AppColors.blackText,
        ) ??
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor ?? AppColors.blackText,
        );

    final Widget trailingWidget =
        trailing ??
        const Icon(Icons.chevron_right, size: 20, color: AppColors.grey);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (leading != null) ...<Widget>[
              SizedBox(width: 24, height: 24, child: Center(child: leading)),
              const SizedBox(width: 12),
            ],
            Expanded(child: Text(label, style: textStyle)),
            trailingWidget,
          ],
        ),
      ),
    );
  }
}
