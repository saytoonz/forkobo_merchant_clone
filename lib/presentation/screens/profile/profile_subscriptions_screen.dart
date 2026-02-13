import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_back_button.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_section_card.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_subscription_entry_tile.dart';

class ProfileSubscriptionsScreen extends StatelessWidget {
  const ProfileSubscriptionsScreen({super.key});

  static final List<_SubscriptionEntry> _entries = <_SubscriptionEntry>[
    const _SubscriptionEntry(
      amount: 'NGN 3,298,3500.00',
      plan: 'Plus',
      date: 'Jun 30, 2025',
      status: 'Pending',
      statusColor: AppColors.orange,
    ),
    const _SubscriptionEntry(
      amount: 'NGN 3,298,3500.00',
      plan: 'Standard',
      date: 'Jun 30, 2025',
      status: 'Verified',
      statusColor: AppColors.grey,
    ),
    const _SubscriptionEntry(
      amount: 'NGN 3,298,3500.00',
      plan: 'Standard',
      date: 'Jun 30, 2025',
      status: 'Verified',
      statusColor: AppColors.grey,
    ),
    const _SubscriptionEntry(
      amount: 'NGN 3,298,3500.00',
      plan: 'Standard',
      date: 'Jun 30, 2025',
      status: 'Verified',
      statusColor: AppColors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle =
        Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const ProfileBackButton(),
              const SizedBox(height: 24),
              Text('Subscriptions', style: titleStyle),
              const SizedBox(height: 24),
              ProfileSectionCard(
                children: _entries
                    .map(
                      (entry) => ProfileSubscriptionEntryTile(
                        amount: entry.amount,
                        plan: entry.plan,
                        date: entry.date,
                        status: entry.status,
                        statusColor: entry.statusColor,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubscriptionEntry {
  const _SubscriptionEntry({
    required this.amount,
    required this.plan,
    required this.date,
    required this.status,
    required this.statusColor,
  });

  final String amount;
  final String plan;
  final String date;
  final String status;
  final Color statusColor;
}
