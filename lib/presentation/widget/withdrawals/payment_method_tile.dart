import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({
    super.key,
    required this.account,
    required this.subtitle,
    required this.holder,
    this.trailing,
  });

  final String account;
  final String subtitle;
  final String holder;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle accountStyle =
        textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
    final TextStyle subtitleStyle =
        textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 12, color: AppColors.grey);
    final TextStyle holderStyle =
        textTheme.bodySmall?.copyWith(
          color: AppColors.blackText,
          fontWeight: FontWeight.w500,
        ) ??
        const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.blackText,
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
                Text(account, style: accountStyle),
                const SizedBox(height: 4),
                Text(subtitle, style: subtitleStyle),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(holder, style: holderStyle),
              const SizedBox(height: 4),
              trailing ?? const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
