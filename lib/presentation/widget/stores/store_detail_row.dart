import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class StoreDetailRow extends StatelessWidget {
  const StoreDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.valueColor = AppColors.blackText,
  });

  final String label;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle labelStyle =
        textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 12, color: AppColors.grey);
    final TextStyle valueStyle =
        textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: valueColor,
        ) ??
        TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: valueColor);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(label, style: labelStyle)),
          Text(value, style: valueStyle),
        ],
      ),
    );
  }
}
