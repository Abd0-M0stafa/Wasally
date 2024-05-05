import 'package:flutter/material.dart';
import 'package:wasally/features/home/presentation/view/widgets/dots_indicator.dart';
import 'package:wasally/features/home/presentation/view/widgets/offers_list.dart';

class OffersSection extends StatefulWidget {
  const OffersSection({super.key});

  @override
  State<OffersSection> createState() => _OffersSectionState();
}

class _OffersSectionState extends State<OffersSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            '- أحدث العروض',
            style: TextStyle(fontFamily: 'DG', fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          OffersList(
            pageController: pageController,
          ),
          const SizedBox(
            height: 15,
          ),
          DotsIndicator(
            currentIndex: currentIndex,
          ),
        ],
      ),
    );
  }
}
