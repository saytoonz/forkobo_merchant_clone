import '../../utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TermsAndPrivacyTextWidget extends StatelessWidget {
  const TermsAndPrivacyTextWidget({
    super.key,
    this.padding = const EdgeInsets.only(left: 50, right: 50, bottom: 30),
  });
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = 12;
    if (width < 380) {
      fontSize = 11;
    }
    return SafeArea(
      top: false,
      child: Padding(
        padding: padding,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'terms.base'.tr(),
            style: context.textTheme.labelMedium?.copyWith(fontSize: fontSize),
            children: [
              TextSpan(
                text: 'terms.terms'.tr(),
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colors.primary,
                  fontSize: fontSize,
                ),
              ),
              TextSpan(text: 'terms.and'.tr()),
              TextSpan(
                text: 'terms.privacy'.tr(),
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colors.primary,
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
