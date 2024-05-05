import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wasally/features/home/presentation/view/widgets/categories_list.dart';
import 'package:wasally/features/home/presentation/view/widgets/categories_section.dart';
import 'package:wasally/features/home/presentation/view/widgets/offers_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: OffersSection(),
        ),
        SliverToBoxAdapter(
          child: CategoriesHeader(),
        ),
        CategoriesList(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        )
      ],
    );
  }
}
