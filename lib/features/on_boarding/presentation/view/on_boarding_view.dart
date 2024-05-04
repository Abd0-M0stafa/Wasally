import 'package:flutter/material.dart';
import 'package:wasally/core/widgets/gradient_background.dart';

import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientBackground(
        child: OnBoardingViewBody(),
      ),
    );
  }
}
