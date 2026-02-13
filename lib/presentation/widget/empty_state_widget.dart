import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'app_animated_logo.dart';
import '../../utils/app_colors.dart';
import '../../utils/extensions.dart';
import 'package:flutter/material.dart';

import 'app_button_one.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    super.key,
    this.title = '',
    this.desc = '',
    this.showAnimatedLogo = true,
    this.padding = const EdgeInsets.only(top: 100, left: 24, right: 24),
    this.btnText,
    this.onBtnTap,
  });
  final String title;
  final String desc;
  final bool showAnimatedLogo;
  final EdgeInsets padding;
  final Function()? onBtnTap;
  final String? btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: showAnimatedLogo,
            child: AppAnimatedLogo(
              showLoading: false,
              iconColor: AppColors.grey.withValues(alpha: .5),
              loaderColor: AppColors.grey.withValues(alpha: .5),
            ),
          ),

          Visibility(
            visible: title.isNotEmpty,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: context.textTheme.headlineMedium?.copyWith(
                color: AppColors.blackText,
              ),
            ),
          ),
          const Gap(8),
          Visibility(
            visible: desc.isNotEmpty,
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: context.textTheme.labelSmall?.copyWith(
                color: AppColors.blackText.withValues(alpha: .8),
              ),
            ),
          ),
          if (onBtnTap != null) ...[
            const Gap(24),
            AppButton(
              title: btnText ?? 'Go Back',
              translateText: false,
              width: 180,
              onTap: () {
                onBtnTap?.call() ?? context.pop();
              },
            ),
          ],
        ],
      ),
    );
  }
}
