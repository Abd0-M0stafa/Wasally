import 'package:flutter/material.dart';
import 'package:wasally/core/widgets/gradient_background.dart';
import 'package:wasally/features/home/presentation/view/widgets/floating.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Floating(),
      body: GradientBackground(
        child: Column(),
      ),
    );
  }
}
