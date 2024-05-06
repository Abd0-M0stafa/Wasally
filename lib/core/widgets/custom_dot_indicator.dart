import 'package:flutter/material.dart';
import 'package:wasally/core/themes/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, this.isActive = false});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
          color: isActive ? AppColors.primaryColor : AppColors.offwhite,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
