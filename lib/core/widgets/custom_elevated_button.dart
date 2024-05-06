import 'package:flutter/material.dart';
import 'package:wasally/core/themes/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.child,
    this.backgroundColor,
    this.onPressed,
    this.elevation,
  });
  final Widget? child;

  final Color? backgroundColor;
  final Function()? onPressed;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              backgroundColor: backgroundColor ?? AppColors.primaryColor),
          onPressed: onPressed,
          child: child),
    );
  }
}
