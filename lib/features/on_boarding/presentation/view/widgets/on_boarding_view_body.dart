import 'package:flutter/material.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/custom_page_view.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/onboarding_buttons.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomPageView(
              controller: pageController,
            ),
            const Spacer(),
            OnBoardingButtons(
              pageController: pageController,
            ),
          ],
        ),
      ),
    );
  }
}
