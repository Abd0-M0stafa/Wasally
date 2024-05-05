import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesHeader extends StatelessWidget {
  const CategoriesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28,
        ),
        Text(
          '- الأقسام -',
          style: TextStyle(fontFamily: 'DG', fontSize: 26),
        ),
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
