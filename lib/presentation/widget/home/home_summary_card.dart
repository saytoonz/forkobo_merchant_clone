import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class HomeSummaryCard extends StatelessWidget {
  const HomeSummaryCard({
    super.key,
    required this.title,
    required this.value,
    this.delta,
    this.backgroundColor = AppColors.white,
    this.valueColor = AppColors.blackText,
    this.deltaColor = AppColors.grey,
  });

  final String title;
  final String value;
  final String? delta;
  final Color backgroundColor;
  final Color valueColor;
  final Color deltaColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

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
    final TextStyle valueStyle =
        textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: valueColor,
        ) ??
        TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: valueColor);
    final TextStyle? deltaStyle = delta == null
        ? null
        : textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: deltaColor,
              ) ??
              TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: deltaColor,
              );

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
          Text(title, style: titleStyle),
          const SizedBox(height: 12),
          Text(value, style: valueStyle),
          if (delta != null) ...<Widget>[
            const SizedBox(height: 6),
            Text(delta!, style: deltaStyle),
          ],
        ],
      ),
    );
  }
}
