import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import '../../../entity/store_activity.dart';

class StoreActivityTile extends StatelessWidget {
  const StoreActivityTile({super.key, required this.activity});

  final StoreActivity activity;

  String _formatDate(DateTime? dt) {
    if (dt == null) return '';
    // Simple, locale-agnostic formatting
    return '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} '
        '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.borderColor),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  activity.title ?? activity.activityType ?? 'Activity',
                  style: textTheme.bodyMedium?.copyWith(
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
                if ((activity.description ?? '').isNotEmpty)
                  Text(
                    activity.description!,
                    style: textTheme.bodySmall?.copyWith(
                          color: AppColors.grey,
                        ) ??
                        const TextStyle(
                          fontSize: 12,
                          color: AppColors.grey,
                        ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            _formatDate(activity.createdAt),
            style: textTheme.bodySmall?.copyWith(color: AppColors.grey) ??
                const TextStyle(fontSize: 12, color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}