import 'package:flutter/material.dart';
// import 'package:second_app/text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;

  var activeImage = "assets/images/dice-1.png";

  void roleDice() {
    activeImage = "assets/images/dice-2.png";
    print("Changed Image!");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeImage,
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
      )),
      // child: TextContainer("HELLOO!!")),
    );
  }
}
