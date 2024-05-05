import 'package:flutter/material.dart';
import 'package:wasally/features/home/presentation/view/widgets/custom_app_bar_icon.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        indicatorColor: Color.fromARGB(255, 0, 0, 0),
        tabs: const [
          CustomAppBarIcon(
            icon: Icons.home,
            title: 'الرئيسية',
          ),
          CustomAppBarIcon(
            icon: Icons.shopping_cart,
            title: 'السله',
          ),
        ]);
  }
}
