import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class WithdrawalEntryTile extends StatelessWidget {
  const WithdrawalEntryTile({
    super.key,
    required this.amount,
    required this.date,
    required this.status,
    required this.statusColor,
  });

  final String amount;
  final String date;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle amountStyle =
        textTheme.titleMedium?.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.blackText,
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
          fontWeight: FontWeight.w500,
          color: statusColor,
        ) ??
        TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: statusColor,
        );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(amount, style: amountStyle)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(date, style: dateStyle),
              const SizedBox(height: 4),
              Text(status, style: statusStyle),
            ],
          ),
        ],
      ),
    );
  }
}
