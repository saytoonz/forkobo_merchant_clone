import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/entity/merchant_store.dart';

class SwitchStoreSheet extends StatelessWidget {
  const SwitchStoreSheet({
    super.key,
    required this.stores,
    required this.selectedStoreId,
  });

  final List<MerchantStore> stores;
  final String? selectedStoreId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Switch store',
                      style:
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackText,
                          ) ??
                          const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackText,
                          ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: AppColors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightBg,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.borderColor),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(stores.length, (int index) {
                    final MerchantStore store = stores[index];
                    final bool isSelected = store.id == selectedStoreId;
                    return Column(
                      children: <Widget>[
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.storefront,
                              color: AppColors.black,
                              size: 20,
                            ),
                          ),
                          title: Text(
                            store.storeName,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackText,
                                ) ??
                                const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackText,
                                ),
                          ),
                          subtitle: (store.status?.isNotEmpty ?? false)
                              ? Text(
                                  store.status!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: AppColors.grey),
                                )
                              : null,
                          trailing: isSelected
                              ? const Icon(Icons.check, color: AppColors.black)
                              : null,
                          onTap: () => Navigator.of(context).pop(store.id),
                        ),
                        if (index != stores.length - 1)
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: AppColors.borderColor,
                          ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
