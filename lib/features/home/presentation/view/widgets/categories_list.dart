import 'package:flutter/material.dart';
import 'package:wasally/features/home/presentation/view/widgets/categories_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 35,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return CategoriesIttem();
        },
      ),
    );
  }
}
