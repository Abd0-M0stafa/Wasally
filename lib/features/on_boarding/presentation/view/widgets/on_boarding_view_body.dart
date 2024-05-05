import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:wasally/core/utils/app_styles.dart';
import 'package:wasally/core/widgets/custom_elevated_button.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/custom_page_view.dart';
import 'package:wasally/features/on_boarding/presentation/view/widgets/on_boarding_item.dart';

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
    // TODO: implement initState
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
          ],
        ),
      ),
    );
  }
}

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          child: Text(
            'التالي',
            style: AppStyles.styleBold20(context),
          ),
        ),
        CustomElevatedButton(
          backgroundColor: Colors.transparent,
          child: Text(
            'تخطي',
            style: AppStyles.styleBold20(context),
          ),
        )
      ],
    );
  }
}
