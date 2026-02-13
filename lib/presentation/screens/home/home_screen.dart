import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:provider/provider.dart';

import '../../notifiers/auth_notifier.dart';
import '/utils/app_colors.dart';
import '/presentation/widget/home/home_badge_card.dart';
import '/presentation/widget/home/home_filter_chip.dart';
import '/presentation/widget/home/home_summary_card.dart';
import '/presentation/widget/home/revenue_chart.dart';
import '/presentation/widget/withdrawals/notification_button.dart';
import '/presentation/notifiers/dashboard_notifier.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _filters = ['24h', '3d', '1w', '2w', '1m', '3m'];
  int _selectedFilterIndex = 1;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      context.read<DashboardNotifier>().loadDashboard(
        range: _filters[_selectedFilterIndex],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<DashboardNotifier>();
    final data = notifier.state.data;

    String revenueValueText = data == null
        ? '\$0.00'
        : '\$${(data.summary.totalRevenue.amount).toStringAsFixed(2)}';
    String revenueDeltaText = data == null
        ? ''
        : '+\$${(data.summary.totalRevenue.weeklyChange).toStringAsFixed(2)} this week.';

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  _GreetingSection(),
                  Spacer(),
                  WithdrawalNotificationButton(count: 0),
                ],
              ),
              const SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Total revenue (USD)',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      revenueValueText,
                      style: context.textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackText,
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (revenueDeltaText.isNotEmpty)
                      Text(
                        revenueDeltaText,
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.red,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: HomeSummaryCard(
                      title: 'Orders',
                      value: data == null
                          ? '—'
                          : '${data.summary.totalOrders.count}',
                      delta: data == null
                          ? null
                          : '+${data.summary.totalOrders.weeklyChange} this week',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: HomeSummaryCard(
                      title: 'Gross profit',
                      value: data == null
                          ? '—'
                          : '\$${data.summary.grossProfit.amount.toStringAsFixed(2)}',
                      delta: data == null
                          ? null
                          : '+\$${data.summary.grossProfit.weeklyChange.toStringAsFixed(2)} this week',
                      deltaColor: AppColors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: HomeSummaryCard(
                      title: 'Orders total amount',
                      value: data == null
                          ? '\$0.00'
                          : '\$${data.summary.ordersTotalAmount.amount.toStringAsFixed(2)}',
                      delta: data == null
                          ? null
                          : '+\$${data.summary.ordersTotalAmount.weeklyChange.toStringAsFixed(2)} this week',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: HomeSummaryCard(
                      title: 'Next payout',
                      value: data == null
                          ? '—'
                          : (data.summary.nextPayout != null
                                ? _formatDate(data.summary.nextPayout!.date)
                                : '—'),
                      backgroundColor: AppColors.paleGreen,
                      valueColor: AppColors.blackText,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              RevenueChart(
                dataPoints: data?.salesChart.data ?? const [0],
                labels: data?.salesChart.labels ?? const [''],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filters.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (BuildContext context, int index) {
                    return HomeFilterChip(
                      label: _filters[index],
                      isSelected: index == _selectedFilterIndex,
                      onTap: () {
                        setState(() => _selectedFilterIndex = index);
                        context.read<DashboardNotifier>().setRange(
                          _filters[index],
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: HomeBadgeCard(
                      title: data == null
                          ? '—'
                          : '${data.operationalMetrics.ordersToFulfill}',
                      subtitle: 'Orders to fulfill',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: HomeBadgeCard(
                      title: data == null
                          ? '—'
                          : '${data.operationalMetrics.highRiskOrders}',
                      subtitle: 'High risk orders',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: HomeBadgeCard(
                      title: data == null
                          ? '—'
                          : '${data.operationalMetrics.chargebackOrders}',
                      subtitle: 'Chargebacks',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GreetingSection extends StatelessWidget {
  const _GreetingSection();

  @override
  Widget build(BuildContext context) {
    final authNotifier = context.read<AuthNotifier>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back,',
          style: context.textTheme.bodyMedium?.copyWith(color: AppColors.grey),
        ),
        const SizedBox(height: 4),
        Text(
          authNotifier.userName,
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.blackText,
          ),
        ),
      ],
    );
  }
}

String _formatDate(String date) {
  try {
    final dt = DateTime.parse(date);
    // e.g., "February 2024"
    return '${dt.day}/${dt.month}/${dt.year}';
  } catch (_) {
    return date;
  }
}
