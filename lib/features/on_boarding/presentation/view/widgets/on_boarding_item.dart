import 'package:flutter/material.dart';
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
        SizedBox(
          child: Center(
            child: Image.asset(onBoardingItemModel.image),
          ),
        ),
        const SizedBox(
          height: 63,
        ),
        Text(onBoardingItemModel.title),
        const SizedBox(
          height: 18,
        ),
        Text(textAlign: TextAlign.center, onBoardingItemModel.subtitle),
      ],
    );
  }
}
