import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:forkobo_merchant/routes.dart';
import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_back_button.dart';
import 'package:forkobo_merchant/presentation/widget/profile/profile_section_card.dart';
import 'package:provider/provider.dart';
import 'package:forkobo_merchant/presentation/notifiers/payment_methods_notifier.dart';
import 'package:forkobo_merchant/presentation/notifiers/withdrawal_request_notifier.dart';
import 'package:forkobo_merchant/entity/payment_method.dart';

class RequestWithdrawalScreen extends StatelessWidget {
  const RequestWithdrawalScreen({super.key});

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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PaymentMethodsNotifier>(
          create: (_) => PaymentMethodsNotifier()..loadMethods(),
        ),
        ChangeNotifierProvider<WithdrawalRequestNotifier>(
          create: (_) => WithdrawalRequestNotifier(),
        ),
      ],
      child: Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const ProfileBackButton(),
              const SizedBox(height: 24),
              Text('Request withdrawal', style: titleStyle),
              const SizedBox(height: 24),
              const ProfileSectionCard(
                children: <Widget>[_RequestFieldBlock()],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: Consumer<WithdrawalRequestNotifier>(
                  builder: (context, req, _) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF2B5F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                      ),
                      onPressed: req.canSubmit
                          ? () async {
                              final messenger = ScaffoldMessenger.of(context);
                              await req.submit();
                              if (req.result != null && req.error == null) {
                                messenger.showSnackBar(
                                  const SnackBar(
                                    content: Text('Withdrawal request created successfully'),
                                  ),
                                );
                              }
                            }
                          : null,
                      child: Text(
                        req.submitting ? 'Requesting…' : 'Request',
                        style:
                            textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ) ??
                            const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(RouteConsts.paymentMethods);
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Text(
                    'Payment methods',
                    style:
                        textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey,
                          decoration: TextDecoration.underline,
                        ) ??
                        const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class _RequestFieldBlock extends StatelessWidget {
  const _RequestFieldBlock();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle labelStyle =
        textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.blackText,
        );
    final TextStyle balanceLabelStyle =
        textTheme.bodySmall?.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ) ??
        const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.grey,
        );
    final TextStyle balanceValueStyle =
        textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Amount to withdraw', style: labelStyle),
          const SizedBox(height: 12),
          Consumer<WithdrawalRequestNotifier>(
            builder: (context, req, _) {
              return TextFormField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.black,
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Enter amount',
                ),
                onChanged: req.setAmountText,
              );
            },
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                text: 'Balance: ',
                style: balanceLabelStyle,
                children: <TextSpan>[
                  TextSpan(text: '\$9,476.00', style: balanceValueStyle),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text('Payment method', style: labelStyle),
          const SizedBox(height: 12),
          Consumer2<PaymentMethodsNotifier, WithdrawalRequestNotifier>(
            builder: (context, methodsNotifier, req, _) {
              if (methodsNotifier.methodsLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (methodsNotifier.methodsError.isNotEmpty) {
                return Text(
                  methodsNotifier.methodsError,
                  style: balanceLabelStyle.copyWith(color: Colors.red),
                );
              }
              final List<PaymentMethod> methods = methodsNotifier.methods;
              if (methods.isEmpty) {
                return Text(
                  'No payment methods found. Add one first.',
                  style: balanceLabelStyle,
                );
              }

              String preferredId() {
                final PaymentMethod def = methods.firstWhere(
                  (m) => m.isDefault == true,
                  orElse: () => methods.first,
                );
                return def.id;
              }

              if (req.paymentMethodId == null) {
                req.setMethodId(preferredId());
              }

              String labelFor(PaymentMethod m) {
                final String base = m.name.isNotEmpty
                    ? m.name
                    : _subtitleFor(m);
                return m.isDefault ? '$base (Primary)' : base;
              }

              return DropdownButtonFormField<String>(
                initialValue: req.paymentMethodId,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.black,
                      width: 1.5,
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.black,
                ),
                items: methods
                    .map(
                      (m) => DropdownMenuItem<String>(
                        value: m.id,
                        child: Text(labelFor(m)),
                      ),
                    )
                    .toList(),
                onChanged: req.setMethodId,
              );
            },
          ),
          const SizedBox(height: 20),
          Text('Notes (optional)', style: labelStyle),
          const SizedBox(height: 12),
          Consumer<WithdrawalRequestNotifier>(
            builder: (context, req, _) {
              return TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.black,
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Monthly withdrawal request',
                ),
                onChanged: req.setNotes,
              );
            },
          ),
        ],
      ),
    );
  }

  String _subtitleFor(PaymentMethod m) {
    final String t = m.type.toLowerCase();
    String? holder;
    String? account;
    if (m.details.isNotEmpty) {
      holder = m.details['account_holder']?.toString();
      account = m.details['account_number']?.toString();
      if (account == null) {
        account = m.details['account']?.toString();
      }
    }
    switch (t) {
      case 'bank':
        final bankName = m.details['bank_name']?.toString();
        final parts = [bankName, account].whereType<String>().where((s) => s.isNotEmpty).toList();
        return parts.join(' - ');
      case 'zelle':
        final email = m.details['email']?.toString();
        final parts = [holder, (email ?? account)].whereType<String>().where((s) => s.isNotEmpty).toList();
        return parts.join(' - ');
      case 'mobile_money':
        final network = m.details['network']?.toString();
        final parts = [network, account].whereType<String>().where((s) => s.isNotEmpty).toList();
        return parts.join(' - ');
      default:
        final parts = [holder, account].whereType<String>().where((s) => s.isNotEmpty).toList();
        return parts.join(' - ');
    }
  }
}
