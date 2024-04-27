import 'package:firstone/diceroller.dart';
import 'package:firstone/styletext.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   GradientContainer(this.color1, this.color2, {super.key});

  // Another constructor if you want to use the default container
   GradientContainer.purple()
      : color1 = Colors.brown,
        color2 = Colors.indigoAccent;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Center(
        child: diceroller(),
      ),
    );
  }
}
