import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class ProfileFilterChip extends StatelessWidget {
  const ProfileFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: isSelected ? AppColors.white : AppColors.grey,
        ) ??
        TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: isSelected ? AppColors.white : AppColors.grey,
        );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: isSelected ? null : Border.all(color: AppColors.borderColor),
        ),
        child: Text(label, style: textStyle),
      ),
    );
  }
}
