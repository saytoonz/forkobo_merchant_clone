import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class StoreChip extends StatelessWidget {
  const StoreChip({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final Color backgroundColor = isSelected
        ? AppColors.black
        : AppColors.secondary;
    final Color textColor = isSelected ? AppColors.white : AppColors.blackText;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          label,
          style:
              textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: textColor,
              ) ??
              TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
        ),
      ),
    );
  }
}
