import 'package:flutter/material.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://img.freepik.com/free-photo/freshness-beauty-nature-wet-drops-generated-by-ai_188544-42272.jpg?t=st=1714877343~exp=1714880943~hmac=929564cf3f36fcace23b2379360ab7a7c4eb7ff6cd53d0c5c6b16c315d7ea07a&w=1380',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
