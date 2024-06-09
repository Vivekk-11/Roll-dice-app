import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 46, 5, 117), Color.fromARGB(255, 46, 23, 86)],
        ),
      ),
    ),
  );
}
