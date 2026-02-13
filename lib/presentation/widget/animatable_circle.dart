import 'package:flutter/material.dart';

class AnimatableCircle extends StatelessWidget {
  const AnimatableCircle({
    super.key,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    required this.assetImg,
  });
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double? width;
  final double? height;
  final String assetImg;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 350;
    double normalTop = 0;
    if (screenHeight < 400) {
      normalTop = screenHeight - 360;
    }
    return AnimatedPositioned(
      left: left,
      top: normalTop + (top ?? 0),
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      child: IgnorePointer(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(height ?? 0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              assetImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
