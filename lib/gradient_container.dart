import 'package:flutter/material.dart';
import 'package:second_app/text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 46, 5, 117),
            Color.fromARGB(255, 46, 23, 86)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: TextContainer(),
      ),
    );
  }
}
