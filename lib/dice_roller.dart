import 'package:flutter/material.dart';
import "dart:math";

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 1;

  void roleDice() {
    setState(() {
      activeImage = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$activeImage.png",
          width: 200,
        ),
        TextButton(
          onPressed: roleDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Click me!"),
        )
      ],
    );
  }
}
