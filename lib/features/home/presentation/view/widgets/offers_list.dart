import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:wasally/features/home/presentation/view/widgets/offer_ittem.dart';

class OffersList extends StatelessWidget {
  const OffersList({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => const OffersItem(),
      ),
    );
  }
}
