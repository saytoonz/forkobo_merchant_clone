import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class AppAnimatedLogo extends StatelessWidget {
  const AppAnimatedLogo({
    super.key,
    this.showLoading = false,
    this.iconColor,
    this.loaderColor,
  });

  final bool showLoading;
  final Color? iconColor;
  final Color? loaderColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Row(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 120,
                width: 120,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    SvgPicture.asset(
                      'assets/icon/kobo.svg',
                      colorFilter: iconColor == null
                          ? ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
                          : ColorFilter.mode(iconColor!, BlendMode.srcIn),
                    ),
                    if (showLoading)
                      Container(
                        width: 16,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 38, right: 4),
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(4),
                          color: loaderColor,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
