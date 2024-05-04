import 'package:flutter/material.dart';
import 'package:wasally/core/themes/app_colors.dart';

class Floating extends StatelessWidget {
  const Floating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: null,
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
