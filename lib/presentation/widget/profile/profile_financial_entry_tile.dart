import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class ProfileFinancialEntryTile extends StatelessWidget {
  const ProfileFinancialEntryTile({
    super.key,
    required this.amount,
    required this.period,
    required this.date,
    required this.status,
    required this.statusColor,
  });

  final String amount;
  final String period;
  final String date;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle amountStyle =
        textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
    final TextStyle periodStyle =
        textTheme.bodySmall?.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ) ??
        const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.grey,
        );
    final TextStyle dateStyle =
        textTheme.bodySmall?.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w600,
        ) ??
        const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.grey,
        );
    final TextStyle statusStyle =
        textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: statusColor,
        ) ??
        TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: statusColor,
        );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(amount, style: amountStyle),
                const SizedBox(height: 6),
                Text(period, style: periodStyle),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(date, style: dateStyle),
              const SizedBox(height: 6),
              Text(status, style: statusStyle),
            ],
          ),
        ],
      ),
    );
  }
}
