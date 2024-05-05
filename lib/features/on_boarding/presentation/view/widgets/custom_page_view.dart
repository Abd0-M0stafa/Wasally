import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/on_boarding_item.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/models/onboarding_item_model.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    this.controller,
  });
  final PageController? controller;
  static final List<OnBoardingItemModel> items = [
    OnBoardingItemModel(
        image: Assets.imagesCategoriesOnboardingTest,
        title: 'All your favorites',
        subtitle:
            'Get all your loved foods in one once place,you just place the orer we do the rest'),
    OnBoardingItemModel(
        image: Assets.imagesCategoriesOnboardingTest,
        title: 'All your favorites',
        subtitle:
            'Get all your loved foods in one once place,you just place the orer we do the rest'),
    OnBoardingItemModel(
        image: Assets.imagesCategoriesOnboardingTest,
        title: 'All your favorites',
        subtitle:
            'Get all your loved foods in one once place,you just place the orer we do the rest'),
  ];

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        controller: controller,
        itemBuilder: (context, index) => OnBoardingItem(
              onBoardingItemModel: items[index],
            ),
        itemCount: items.length);
  }
}
