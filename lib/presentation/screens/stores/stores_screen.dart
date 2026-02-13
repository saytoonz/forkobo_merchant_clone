import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import 'package:forkobo_merchant/presentation/widget/stores/store_detail_row.dart';
import 'package:forkobo_merchant/presentation/widget/stores/store_stat_card.dart';
import 'package:forkobo_merchant/presentation/widget/stores/store_activity_tile.dart';
import 'package:forkobo_merchant/presentation/widget/empty_state_widget.dart';
import 'package:forkobo_merchant/presentation/widget/error_state_widget.dart';
import 'bottom_sheets/edit_store_sheet.dart';
import 'bottom_sheets/switch_store_sheet.dart';
import '../../notifiers/store_notifier.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  void initState() {
    super.initState();
    // Load stores on first build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StoreNotifier>().loadStores();
    });
  }

  Future<void> _showSwitchStoreSheet() async {
    final storeNotifier = context.read<StoreNotifier>();
    final String? result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (BuildContext ctx) => SwitchStoreSheet(
        stores: storeNotifier.stores,
        selectedStoreId: storeNotifier.selectedStoreId,
      ),
    );

    if (result != null && result != storeNotifier.selectedStoreId) {
      await storeNotifier.selectStoreById(result);
    }
  }

  Future<void> _showEditStoreSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (BuildContext ctx) => const EditStoreSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final storeNotifier = context.watch<StoreNotifier>();
    final TextTheme textTheme = Theme.of(context).textTheme;
    final details = storeNotifier.details;

    final TextStyle revenueLabelStyle =
        textTheme.bodySmall?.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w600,
        ) ??
        const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.grey,
        );

    final TextStyle revenueValueStyle =
        textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.blackText,
        ) ??
        const TextStyle(
          fontSize: 32,
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

    Widget buildContent() {
      if (storeNotifier.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      if (storeNotifier.error.isNotEmpty) {
        return ErrorStateWidget(
          title: 'Failed to load stores',
          desc: storeNotifier.error,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          onRetry: () => storeNotifier.loadStores(),
        );
      }
      if (storeNotifier.stores.isEmpty) {
        return const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: EmptyStateWidget(
            title: 'No stores yet',
            desc: 'You do not have any stores. Create one to get started.',
            showAnimatedLogo: true,
            padding: EdgeInsets.only(top: 100, left: 24, right: 24),
          ),
        );
      }

      return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: _showSwitchStoreSheet,
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 180,
                    maxWidth: 220,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppColors.borderColor),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.store,
                          color: AppColors.black,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          storeNotifier.selectedStore?.storeName ??
                              'Select store',
                          style:
                              textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.blackText,
                              ) ??
                              const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.blackText,
                              ),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Column(
                children: <Widget>[
                  Text('Total revenue (USD)', style: revenueLabelStyle),
                  const SizedBox(height: 8),
                  if (storeNotifier.detailsLoading)
                    const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  else if (storeNotifier.detailsError.isNotEmpty)
                    Text(
                      storeNotifier.detailsError,
                      style:
                          textTheme.bodyMedium?.copyWith(
                            color: AppColors.red,
                          ) ??
                          const TextStyle(fontSize: 14, color: AppColors.red),
                    )
                  else
                    Text(
                      '\$${(details?.analytics.totalRevenue.amount ?? 0).toStringAsFixed(2)}',
                      style: revenueValueStyle,
                    ),
                  const SizedBox(height: 8),
                  if (details != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _DeltaIndicator(
                          icon:
                              (details
                                      .analytics
                                      .totalRevenue
                                      .percentageChange) >=
                                  0
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          label:
                              '${(details.analytics.totalRevenue.percentageChange) >= 0 ? '+' : ''}${(details.analytics.totalRevenue.percentageChange).toStringAsFixed(1)}%',
                          color:
                              (details
                                      .analytics
                                      .totalRevenue
                                      .percentageChange) >=
                                  0
                              ? AppColors.green
                              : AppColors.red,
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: <Widget>[
                Expanded(
                  child: StoreStatCard(
                    title: 'Orders',
                    value: '${details?.analytics.orders.count ?? 0}',
                    footer: _DeltaIndicator(
                      icon:
                          ((details?.analytics.orders.percentageChange ?? 0) >=
                              0)
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      label:
                          '${(details?.analytics.orders.percentageChange ?? 0) >= 0 ? '+' : ''}${(details?.analytics.orders.percentageChange ?? 0).toStringAsFixed(2)}%',
                      color:
                          ((details?.analytics.orders.percentageChange ?? 0) >=
                              0)
                          ? AppColors.green
                          : AppColors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: StoreStatCard(
                    title: 'Ad spend',
                    value:
                        '\$${(details?.analytics.adSpend ?? 0).toStringAsFixed(2)}',
                    caption: 'Default ad package',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Store details', style: sectionTitleStyle),
                      ),
                      TextButton.icon(
                        onPressed: _showEditStoreSheet,
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        icon: const Icon(
                          Icons.edit,
                          size: 18,
                          color: AppColors.black,
                        ),
                        label: Text(
                          'Edit',
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
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    details?.store.storeName ??
                        storeNotifier.selectedStore?.storeName ??
                        '—',
                    style:
                        textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackText,
                        ) ??
                        const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackText,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    details?.store.storeDomain ?? '—',
                    style:
                        textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFE4967),
                        ) ??
                        const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFE4967),
                        ),
                  ),
                  const SizedBox(height: 20),
                  StoreDetailRow(
                    label: 'Status',
                    value: details?.store.status ?? '—',
                  ),
                  StoreDetailRow(
                    label: 'Went live on',
                    value: details?.store.wentLiveAt == null
                        ? '—'
                        : details!.store.wentLiveAt!.dateFormat2,
                  ),
                  const Divider(color: AppColors.borderColor),
                  StoreDetailRow(
                    label: 'Last payout',
                    value:
                        '\$${(details?.lastPayout.amount ?? 0).toStringAsFixed(2)}',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Recent activities', style: sectionTitleStyle),
                  const SizedBox(height: 16),
                  storeNotifier.activitiesLoading
                      ? Row(
                          children: <Widget>[
                            const SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Loading activities...',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.grey,
                              ),
                            ),
                          ],
                        )
                      : storeNotifier.activitiesError.isNotEmpty
                      ? Text(
                          storeNotifier.activitiesError,
                          style:
                              textTheme.bodyMedium?.copyWith(
                                color: AppColors.red,
                              ) ??
                              const TextStyle(
                                fontSize: 14,
                                color: AppColors.red,
                              ),
                        )
                      : storeNotifier.activities.isEmpty
                      ? Text(
                          'No activities',
                          style:
                              textTheme.bodyMedium?.copyWith(
                                color: AppColors.grey,
                              ) ??
                              const TextStyle(
                                fontSize: 14,
                                color: AppColors.grey,
                              ),
                        )
                      : Column(
                          children: storeNotifier.activities
                              .map((a) => StoreActivityTile(activity: a))
                              .toList(),
                        ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: SafeArea(child: buildContent()),
    );
  }
}

class _DeltaIndicator extends StatelessWidget {
  const _DeltaIndicator({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, size: 18, color: color),
        const SizedBox(width: 4),
        Text(
          label,
          style:
              textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: color,
              ) ??
              TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: color,
              ),
        ),
      ],
    );
  }
}
