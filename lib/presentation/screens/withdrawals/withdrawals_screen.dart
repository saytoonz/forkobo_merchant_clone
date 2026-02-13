import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:forkobo_merchant/routes.dart';
import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_action_tile.dart';
import 'package:forkobo_merchant/presentation/widget/withdrawals/notification_button.dart';
import 'package:forkobo_merchant/presentation/widget/withdrawals/withdrawal_entry_tile.dart';
import 'package:provider/provider.dart';
import '../../notifiers/withdrawals_notifier.dart';
import 'package:forkobo_merchant/entity/withdrawal.dart';
import 'package:forkobo_merchant/utils/extensions.dart';

class WithdrawalsScreen extends StatelessWidget {
  const WithdrawalsScreen({super.key});

  Color _statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return AppColors.orange;
      case 'processed':
      case 'completed':
        return AppColors.green;
      case 'failed':
      case 'rejected':
        return AppColors.red;
      default:
        return AppColors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle greetingStyle =
        textTheme.bodyMedium?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 14, color: AppColors.grey);
    final TextStyle nameStyle =
        textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
    final TextStyle balanceLabelStyle =
        textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
        const TextStyle(fontSize: 12, color: AppColors.grey);
    final TextStyle balanceValueStyle =
        textTheme.headlineMedium?.copyWith(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
    final TextStyle sectionTitleStyle =
        textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SafeArea(
        child: ChangeNotifierProvider<WithdrawalsNotifier>(
          create: (_) => WithdrawalsNotifier()
            ..load()
            ..loadWallet(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Welcome back,', style: greetingStyle),
                          const SizedBox(height: 4),
                          Text('Mustapha!', style: nameStyle),
                        ],
                      ),
                    ),
                    const WithdrawalNotificationButton(count: 0),
                  ],
                ),
                const SizedBox(height: 24),
                Consumer<WithdrawalsNotifier>(
                  builder: (context, n, _) {
                    final String labelCurrency = n.wallet?.currency ?? 'USD';
                    final String amountText = n.wallet != null
                        ? '${n.wallet!.currency} ${n.wallet!.availableBalance.toStringAsFixed(2)}'
                        : '\$751.00';
                    final String lastPayoutText =
                        (n.wallet?.lastPayoutAt != null)
                        ? 'Last payout: ${n.wallet!.lastPayoutAt!.dateFormat2}'
                        : '';

                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 24),
                          Text(
                            'Available to withdraw ($labelCurrency)',
                            style: balanceLabelStyle,
                          ),
                          const SizedBox(height: 8),
                          if (n.walletLoading)
                            const SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          else if (n.walletError.isNotEmpty)
                            Text(
                              n.walletError,
                              style: balanceLabelStyle.copyWith(
                                color: AppColors.red,
                              ),
                            )
                          else
                            Text(amountText, style: balanceValueStyle),
                          if (lastPayoutText.isNotEmpty) ...<Widget>[
                            const SizedBox(height: 6),
                            Text(lastPayoutText, style: balanceLabelStyle),
                          ],
                          const SizedBox(height: 24),
                          const Divider(
                            height: 1,
                            color: AppColors.borderColor,
                          ),
                          ProfileActionTile(
                            label: 'Request withdrawal',
                            leading: const Icon(
                              Icons.wallet_outlined,
                              size: 20,
                              color: AppColors.black,
                            ),
                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 20,
                              color: AppColors.black,
                            ),
                            onTap: () {
                              context.pushNamed(RouteConsts.requestWithdrawal);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 32),
                Text('Withdrawals', style: sectionTitleStyle),
                const SizedBox(height: 12),
                Consumer<WithdrawalsNotifier>(
                  builder: (BuildContext ctx, WithdrawalsNotifier n, _) {
                    if (n.isLoading) {
                      return Row(
                        children: const <Widget>[
                          SizedBox(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Loading withdrawals...',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      );
                    }
                    if (n.error.isNotEmpty) {
                      return Text(
                        n.error,
                        style:
                            textTheme.bodyMedium?.copyWith(
                              color: AppColors.red,
                            ) ??
                            const TextStyle(fontSize: 14, color: AppColors.red),
                      );
                    }
                    if (n.items.isEmpty) {
                      return Text(
                        'No withdrawals',
                        style:
                            textTheme.bodyMedium?.copyWith(
                              color: AppColors.grey,
                            ) ??
                            const TextStyle(
                              fontSize: 14,
                              color: AppColors.grey,
                            ),
                      );
                    }

                    final List<Withdrawal> items = n.items;
                    return Column(
                      children: List<Widget>.generate(items.length, (
                        int index,
                      ) {
                        final Withdrawal w = items[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: index == items.length - 1 ? 0 : 8,
                          ),
                          child: WithdrawalEntryTile(
                            amount:
                                '${w.currency ?? ''} ${w.amount.toStringAsFixed(2)}'
                                    .trim(),
                            date: w.createdAt.dateFormat2,
                            status: w.status.capitalize,
                            statusColor: _statusColor(w.status),
                          ),
                        );
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
