import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_back_button.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_filter_chip.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_financial_entry_tile.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_financial_summary_card.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_section_card.dart';

class ProfileFinancialsScreen extends StatefulWidget {
  const ProfileFinancialsScreen({super.key});

  @override
  State<ProfileFinancialsScreen> createState() =>
      _ProfileFinancialsScreenState();
}

class _ProfileFinancialsScreenState extends State<ProfileFinancialsScreen> {
  static const List<String> _filters = <String>[
    'All',
    'Last month',
    'This year',
  ];

  static final List<_FinancialEntry> _entries = <_FinancialEntry>[
    const _FinancialEntry(
      amount: '\$99.00',
      period: 'Jun 1 - Jul 30',
      date: 'Jun 30, 2025',
      status: 'Pending',
      statusColor: AppColors.orange,
    ),
    const _FinancialEntry(
      amount: '\$99.00',
      period: 'Jun 1 - Jul 30',
      date: 'Jun 30, 2025',
      status: 'Paid',
      statusColor: AppColors.grey,
    ),
    const _FinancialEntry(
      amount: '\$99.00',
      period: 'Jun 1 - Jul 30',
      date: 'Jun 30, 2025',
      status: 'Paid',
      statusColor: AppColors.grey,
    ),
    const _FinancialEntry(
      amount: '\$99.00',
      period: 'Jun 1 - Jul 30',
      date: 'Jun 30, 2025',
      status: 'Paid',
      statusColor: AppColors.grey,
    ),
  ];

  int _selectedFilterIndex = 0;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle titleStyle =
        textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );

    final TextStyle subtitleStyle =
        textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 12, color: AppColors.grey);

    final TextStyle totalStyle =
        textTheme.displaySmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 32,
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
              Text('Financials', style: titleStyle),
              const SizedBox(height: 28),
              Center(
                child: Column(
                  children: <Widget>[
                    Text('Total payouts (USD)', style: subtitleStyle),
                    const SizedBox(height: 8),
                    Text('\$160.00', style: totalStyle),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: ProfileFinancialSummaryCard(
                      title: 'Last payout',
                      value: '\$99.00',
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ProfileFinancialSummaryCard(
                      title: 'Next payout',
                      value: 'July 16',
                      backgroundColor: AppColors.paleGreen,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 40,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: _filters.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (BuildContext context, int index) {
                    final String label = _filters[index];
                    return ProfileFilterChip(
                      label: label,
                      isSelected: _selectedFilterIndex == index,
                      onTap: () {
                        setState(() {
                          _selectedFilterIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ProfileSectionCard(
                children: _entries
                    .map(
                      (entry) => ProfileFinancialEntryTile(
                        amount: entry.amount,
                        period: entry.period,
                        date: entry.date,
                        status: entry.status,
                        statusColor: entry.statusColor,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.paleGreen,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Tip:',
                      style:
                          textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackText,
                          ) ??
                          const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackText,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Payouts are processed every 30 days',
                      style: subtitleStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FinancialEntry {
  const _FinancialEntry({
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
}
