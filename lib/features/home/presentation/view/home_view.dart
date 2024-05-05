import 'package:flutter/material.dart';
import 'package:wasally/core/themes/app_colors.dart';
import 'package:wasally/features/home/presentation/view/widgets/app_bar_title.dart';
import 'package:wasally/features/home/presentation/view/widgets/card_body.dart';
import 'package:wasally/features/home/presentation/view/widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: AppBarTitle(
          tabController: tabController,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          HomeBody(),
          CardBody(),
        ],
      ),
    );
  }
}
