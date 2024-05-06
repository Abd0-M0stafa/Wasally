import 'package:flutter/material.dart';
import 'package:wasally/core/themes/app_colors.dart';
import 'package:wasally/core/utils/app_styles.dart';
import 'package:wasally/core/widgets/custom_elevated_button.dart';

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
            pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          },
          child: Text(
            'التالي',
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
                  onPressed: () {},
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
}
