import 'package:flutter/material.dart';
import 'package:wasally/core/widgets/dots_list_view.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/custom_page_view.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/onboarding_buttons.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });

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
            DotsListView(currentPage: currentPage, dotsCount: 3),
            const SizedBox(
              height: 10,
            ),
            OnBoardingButtons(
              pageController: pageController,
            ),
          ],
        ),
      ),
    );
  }
}
