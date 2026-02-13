import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class StoreStatCard extends StatelessWidget {
  const StoreStatCard({
    super.key,
    required this.title,
    required this.value,
    this.caption,
    this.trailing,
    this.footer,
    this.backgroundColor = AppColors.white,
  });

  final String title;
  final String value;
  final String? caption;
  final Widget? trailing;
  final Widget? footer;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle valueStyle =
        textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
    final TextStyle titleStyle =
        textTheme.bodySmall?.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ) ??
        const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.grey,
        );
    final TextStyle captionStyle =
        textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 12, color: AppColors.grey);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Text(title, style: titleStyle)),
              if (trailing != null) trailing!,
            ],
          ),
          const SizedBox(height: 12),
          Text(value, style: valueStyle),
          if (caption != null) ...<Widget>[
            const SizedBox(height: 4),
            Text(caption!, style: captionStyle),
          ],
          if (footer != null) ...<Widget>[const SizedBox(height: 8), footer!],
        ],
      ),
    );
  }
}
