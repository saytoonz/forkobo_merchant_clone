import 'package:flutter/material.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:provider/provider.dart';
import 'package:forkobo_merchant/utils/app_colors.dart';
import '../../notifiers/payment_methods_notifier.dart';
import 'package:forkobo_merchant/entity/payment_method_type.dart';

class AddPaymentMethodSheet extends StatelessWidget {
  const AddPaymentMethodSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final TextStyle titleStyle =
        textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        );
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

    return ChangeNotifierProvider<PaymentMethodsNotifier>(
      create: (_) => PaymentMethodsNotifier()..loadTypes(),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Consumer<PaymentMethodsNotifier>(
          builder: (BuildContext ctx, PaymentMethodsNotifier n, _) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Add payment method', style: titleStyle),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: AppColors.black),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text('Payment method type', style: labelStyle),
                    const SizedBox(height: 12),
                    if (n.typesLoading)
                      const SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    else if (n.typesError.isNotEmpty)
                      Text(
                        n.typesError,
                        style: labelStyle.copyWith(color: AppColors.red),
                      )
                    else
                      DropdownButtonFormField<String>(
                        initialValue: n.selectedType?.type,
                        decoration: _inputDecoration(),
                        items: n.types
                            .map(
                              (t) => DropdownMenuItem<String>(
                                value: t.type,
                                child: Text(t.name),
                              ),
                            )
                            .toList(),
                        onChanged: (String? v) {
                          final sel = n.types.firstWhere((t) => t.type == v);
                          n.selectType(sel);
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.black,
                        ),
                      ),
                    const SizedBox(height: 24),
                    const SizedBox(height: 24),
                    if (n.selectedType != null) ...<Widget>[
                      // Remove subtitle; only show required fields
                      const SizedBox(height: 12),
                      ...n.selectedType!.requiredFields
                          .where((spec) => spec.required)
                          .map((spec) => _buildField(spec, n, textTheme)),
                    ],
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: n.isDefault,
                          onChanged: (bool? v) => n.setDefault(v ?? false),
                          side: const BorderSide(
                            color: AppColors.borderColor,
                            width: 1.5,
                          ),
                        ),
                        Text(
                          'Make primary',
                          style:
                              textTheme.bodyMedium?.copyWith(
                                color: AppColors.blackText,
                              ) ??
                              const TextStyle(
                                fontSize: 14,
                                color: AppColors.blackText,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF2B5F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            onPressed: n.submitting || !n.canSubmit
                                ? null
                                : () async {
                                    final navigator = Navigator.of(context);
                                    await n.submit();
                                    if (n.submitError.isEmpty &&
                                        n.result != null) {
                                      navigator.pop();
                                    }
                                  },
                            child: n.submitting
                                ? const SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        AppColors.white,
                                      ),
                                    ),
                                  )
                                : Text(
                                    'ADD',
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
                          ),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(
                            'CANCEL',
                            style:
                                textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey,
                                ) ??
                                const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey,
                                ),
                          ),
                        ),
                      ],
                    ),
                    if (n.submitError.isNotEmpty) ...<Widget>[
                      const SizedBox(height: 12),
                      Text(
                        n.submitError,
                        style: labelStyle.copyWith(color: AppColors.red),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      hintStyle: const TextStyle(color: AppColors.grey),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      filled: true,
      fillColor: AppColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.black, width: 1.5),
      ),
    );
  }

  Widget _buildField(
    FieldSpec spec,
    PaymentMethodsNotifier n,
    TextTheme textTheme,
  ) {
    final InputDecoration base = _inputDecoration();
    final String label = spec.key.replaceAll('_', ' ').trim().capitalize;

    // If the selected type exposes select options for this field (e.g., 'network' from 'networks'),
    // present a dropdown regardless of original kind.
    final Map<String, List<String>> enumOptions =
        n.selectedType?.enumOptions ?? const {};
    if (enumOptions.containsKey(spec.key)) {
      final List<String> opts = enumOptions[spec.key] ?? const <String>[];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style:
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ) ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            initialValue: (n.details[spec.key] as String?)?.isNotEmpty == true
                ? n.details[spec.key] as String
                : null,
            decoration: base,
            items: opts
                .map(
                  (opt) =>
                      DropdownMenuItem<String>(value: opt, child: Text(opt)),
                )
                .toList(),
            onChanged: (String? v) => n.setFieldValue(spec.key, v ?? ''),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 16),
        ],
      );
    }
    if ((spec.kind == 'select') && (spec.options != null)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style:
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ) ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            initialValue: (n.details[spec.key] as String?)?.isNotEmpty == true
                ? n.details[spec.key] as String
                : null,
            decoration: base,
            items: (spec.options ?? <String>[])
                .map(
                  (opt) =>
                      DropdownMenuItem<String>(value: opt, child: Text(opt)),
                )
                .toList(),
            onChanged: (String? v) => n.setFieldValue(spec.key, v ?? ''),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 16),
        ],
      );
    }

    if (spec.kind == 'number') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style:
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ) ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: base.copyWith(hintText: 'Enter $label'),
            onChanged: (v) => n.setFieldValue(spec.key, v),
          ),
          const SizedBox(height: 16),
        ],
      );
    }

    if (spec.kind == 'email') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style:
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ) ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: base.copyWith(hintText: 'Enter $label'),
            onChanged: (v) => n.setFieldValue(spec.key, v),
          ),
          const SizedBox(height: 16),
        ],
      );
    }

    if (spec.kind == 'phone') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style:
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ) ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: base.copyWith(hintText: 'Enter $label'),
            onChanged: (v) => n.setFieldValue(spec.key, v),
          ),
          const SizedBox(height: 16),
        ],
      );
    }

    if ((spec.kind == 'array' || spec.kind == 'object') ||
        (spec.nested?.isNotEmpty ?? false)) {
      final Map<String, String> group =
          n.nested[spec.key] ?? <String, String>{};
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style:
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ) ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackText,
                ),
          ),
          const SizedBox(height: 8),
          ...group.entries.map((e) {
            return Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: base.copyWith(hintText: 'FIELD NAME'),
                    initialValue: e.key,
                    onChanged: (v) => n.updateNestedKey(spec.key, e.key, v),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: base.copyWith(hintText: 'VALUE'),
                    initialValue: e.value,
                    onChanged: (v) => n.updateNestedValue(spec.key, e.key, v),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    color: AppColors.black,
                  ),
                  onPressed: () => n.removeNestedKey(spec.key, e.key),
                ),
              ],
            );
          }),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: () => n.addNestedPair(spec.key),
              icon: const Icon(Icons.add, color: AppColors.black),
              label: const Text('ADD FIELD'),
            ),
          ),
          const SizedBox(height: 16),
        ],
      );
    }

    // default: text
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style:
              textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.blackText,
              ) ??
              const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.blackText,
              ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: base.copyWith(hintText: 'Enter $label'),
          onChanged: (v) => n.setFieldValue(spec.key, v),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
