import 'package:flutter/material.dart';

import '../../features/home/presentation/view/widgets/custom_dot_indicator.dart';

class DotsListView extends StatelessWidget {
  const DotsListView({super.key, required this.currentIndex, required this.dotsCount});
  final int currentIndex;
  
  final int dotsCount ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        dotsCount,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CustomDotIndicator(
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}