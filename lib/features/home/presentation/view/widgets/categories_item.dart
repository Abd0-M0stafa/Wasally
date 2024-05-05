import 'package:flutter/material.dart';

class CategoriesIttem extends StatelessWidget {
  const CategoriesIttem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 7.5 / 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/categories/صيدالية.png',
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'صيدالية',
          style: TextStyle(fontFamily: 'DG', fontSize: 20),
        )
      ],
    );
  }
}
