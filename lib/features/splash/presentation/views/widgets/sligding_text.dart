import 'package:flutter/material.dart';

class SligdingText extends StatelessWidget {
  const SligdingText({super.key, required this.sligingAnimation});

  final Animation<Offset> sligingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sligingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: sligingAnimation,
          child: const Text(
            textAlign: TextAlign.center,
            'ayman & abdo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
