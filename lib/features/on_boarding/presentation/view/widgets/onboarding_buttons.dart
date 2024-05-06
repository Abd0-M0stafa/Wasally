import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasally/core/themes/app_colors.dart';
import 'package:wasally/core/utils/app_styles.dart';
import 'package:wasally/core/widgets/custom_elevated_button.dart';
import 'package:wasally/features/home/presentation/view/home_view.dart';

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          onPressed: () {
            navigateToNextPage(pageController.page!.round());
          },
          child: Text(
            pageController.page == 2 ? 'بدأ' : 'التالي',
            style: AppStyles.styleBold20(context),
          ),
        ),
        Builder(builder: (context) {
          return pageController.page == 2
              ? const SizedBox(
                  height: 62,
                )
              : CustomElevatedButton(
                  elevation: 0,
                  onPressed: () {
                    Get.off(() => const HomeView(),
                        transition: Transition.fade);
                  },
                  backgroundColor: Colors.transparent,
                  child: Text(
                    'تخطي',
                    style: AppStyles.regular16(context)
                        .copyWith(color: AppColors.whiteColor),
                  ),
                );
        })
      ],
    );
  }

  void navigateToNextPage(int currentIndex) {
    if (currentIndex == 2) {
      Get.off(() => const HomeView(), transition: Transition.fade);
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }
  }
}
