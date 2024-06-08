import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
            child: Text(
              "Hello World!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
