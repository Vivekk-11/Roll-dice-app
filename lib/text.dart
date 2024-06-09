import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello World!!",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
