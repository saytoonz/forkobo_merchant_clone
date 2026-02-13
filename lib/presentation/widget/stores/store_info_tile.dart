import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class StoreInfoTile extends StatelessWidget {
  const StoreInfoTile({
    super.key,
    required this.label,
    required this.value,
    this.alignment = Alignment.centerLeft,
    this.valueColor = AppColors.blackText,
  });

  final String label;
  final String value;
  final Alignment alignment;
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

    return Align(
      alignment: alignment,
      child: Column(
        crossAxisAlignment: alignment == Alignment.centerRight
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(label, style: labelStyle),
          const SizedBox(height: 6),
          Text(value, style: valueStyle),
        ],
      ),
    );
  }
}
