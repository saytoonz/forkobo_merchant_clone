import '../../utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

class CircularIconBtn extends StatelessWidget {
  const CircularIconBtn({
    super.key,
    this.onTap,
    this.bgColor = AppColors.grey,
    this.borderColor,
    this.icon,
    this.radius = 48,
    this.iconColor,
    this.height,
    this.width,
    this.elevation = 0,
    this.shadowColor,
  });
  final Function()? onTap;
  final Color bgColor;
  final Color? borderColor;
  final Color? iconColor;
  final Widget? icon;
  final double radius;
  final double? height;
  final double? width;
  final double elevation;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: shadowColor,
      elevation: elevation,
      color: bgColor,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap == null
            ? null
            : () async {
                Vibrate.feedback(FeedbackType.impact);
                onTap?.call();
              },
        child: Container(
          height: height ?? radius,
          width: width ?? radius,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: borderColor == null
                ? null
                : Border.all(color: borderColor!),
          ),
          child: icon ?? Icon(Icons.arrow_back_ios_new, color: iconColor),
        ),
      ),
    );
  }
}
