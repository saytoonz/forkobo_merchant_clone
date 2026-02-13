import '/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class OnboardingTextContainer extends StatelessWidget {
  const OnboardingTextContainer({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = 13;
    double headingFontSize = 20;
    if (width < 380) {
      fontSize = 12.2;
      headingFontSize = 18;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(),
          const Spacer(),
          Text(
            title,
            style: context.textTheme.headlineMedium?.copyWith(
              fontSize: headingFontSize,
            ),
            textAlign: TextAlign.center,
          ).tr(),
          const SizedBox(height: 16),
          Text(
            description,
            style: context.textTheme.labelSmall?.copyWith(fontSize: fontSize),
            textAlign: TextAlign.center,
          ).tr(),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
