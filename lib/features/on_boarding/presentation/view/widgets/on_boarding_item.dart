import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wasally/core/utils/app_styles.dart';
import 'package:wasally/features/on_boarding/data/models/onboarding_item_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.onBoardingItemModel,
  });
  final OnBoardingItemModel onBoardingItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3 / 2,
          child: FittedBox(child: Image.asset(onBoardingItemModel.image)),
        ),
        const SizedBox(
          height: 63,
        ),
        Text(
          onBoardingItemModel.title,
          style: AppStyles.styleExtraBold24(context),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          textAlign: TextAlign.center,
          onBoardingItemModel.subtitle,
        ),
      ],
    );
  }
}
