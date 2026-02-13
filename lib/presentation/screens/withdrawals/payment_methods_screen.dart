import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_back_button.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_section_card.dart';
import 'package:forkobo_merchant/presentation/widget/withdrawals/payment_method_tile.dart';
import 'package:provider/provider.dart';
import 'package:forkobo_merchant/presentation/notifiers/payment_methods_notifier.dart';
import 'package:forkobo_merchant/entity/payment_method.dart';
import 'package:forkobo_merchant/presentation/screens/withdrawals/add_payment_method_sheet.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle titleStyle =
        textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SafeArea(
        child: ChangeNotifierProvider<PaymentMethodsNotifier>(
          create: (_) => PaymentMethodsNotifier()..loadMethods(),
          child: Consumer<PaymentMethodsNotifier>(
            builder: (BuildContext ctx, PaymentMethodsNotifier n, _) {
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const ProfileBackButton(),
                    const SizedBox(height: 24),
                    Text('Payment methods', style: titleStyle),
                    const SizedBox(height: 24),
                    ProfileSectionCard(
                      children: <Widget>[
                        if (n.methodsLoading)
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          )
                        else if (n.methodsError.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              n.methodsError,
                              style: textTheme.bodyMedium?.copyWith(color: AppColors.red) ?? const TextStyle(fontSize: 14, color: AppColors.red),
                            ),
                          )
                        else if (n.methods.isEmpty)
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('No payment methods yet'),
                          )
                        else
                          ...n.methods.map(
                            (m) => Column(
                              children: <Widget>[
                                PaymentMethodTile(
                                  account: _accountText(m),
                                  subtitle: _subtitleText(m),
                                  holder: _holderText(m),
                                  trailing: m.isDefault
                                      ? Text(
                                          'Primary',
                                          style: textTheme.bodySmall?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.orange,
                                              ) ??
                                              const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.orange,
                                              ),
                                        )
                                      : const SizedBox.shrink(),
                                ),
                                if (m != n.methods.last)
                                  const Divider(height: 1, color: AppColors.borderColor),
                              ],
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFF2B5F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 18),
                              ),
                              onPressed: () async {
                                final notifier = ctx.read<PaymentMethodsNotifier>();
                                await showModalBottomSheet<void>(
                                  context: context,
                                  isScrollControlled: true,
                                  useRootNavigator: true,
                                  backgroundColor: AppColors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(28),
                                    ),
                                  ),
                                  builder: (BuildContext ctx) => const AddPaymentMethodSheet(),
                                );
                                // Refresh after sheet closes
                                notifier.loadMethods();
                              },
                              child: Text(
                                'Add new',
                                style: textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                    ) ??
                                    const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

String _accountText(PaymentMethod m) {
  // Prefer human-assigned name
  if (m.name.isNotEmpty) return m.name;
  // Fallbacks from details
  final d = m.details;
  return (d['account_number'] ?? d['iban'] ?? d['mobile_number'] ?? d['email_or_phone'] ?? '').toString();
}

String _holderText(PaymentMethod m) {
  final d = m.details;
  return (d['account_holder_name'] ?? d['enrolled_name'] ?? d['account_name'] ?? '').toString();
}

String _subtitleText(PaymentMethod m) {
  final type = m.type;
  final d = m.details;
  switch (type) {
    case 'bank':
      final bank = d['bank_name'] ?? d['bank'] ?? '';
      return bank.toString().isNotEmpty ? 'Bank ($bank)' : 'Bank';
    case 'mobile_money':
      final net = d['network'] ?? '';
      return net.toString().isNotEmpty ? 'Momo ($net)' : 'Momo';
    case 'zelle':
      return 'Zelle';
    default:
      return type;
  }
}
