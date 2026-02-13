import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color transparent = Colors.transparent;

  static const Color primary = Color(0xFF222222);
  static const Color secondary = Color(0xFFD9D9D9);
  static const Color darkBg = Color(0xFF161616);
  static const Color lightBg = Color(0xFFFBFBFB);

  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFff0000);
  static const Color orange = Color(0xFFFFA000);
  static const Color green = Color(0xFF4CAF50);
  static const Color paleGreen = Color(0xFFF1FFE1);
  static const Color white = Color(0xFFFFFFFF);

  static const Color blackText = Color(0xFF222222);
  static const Color whiteText = Color(0xFFFEFEFE);
  static const Color darkestGrey = Color.fromARGB(255, 50, 50, 50);
  static const Color grey = Color(0xFF7F7F7F);

  static const Color borderColor = Color(0xFFEBEBF0);
  static Color borderColor2 = AppColors.grey.withValues(alpha: .2);
}

// Primary Color:
// Hex —> #fe2b5f
// RGBA —> rgba(254,43,95,255)
