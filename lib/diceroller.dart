import 'package:flutter/material.dart';
import 'dart:math';
final random = Random();


class diceroller extends StatefulWidget{
  const diceroller({super.key});

  @override
  State<diceroller> createState(){
    return _dicerollerstate();
}
}

class _dicerollerstate extends State<diceroller>{

  var activediceimage = 'assets/dice-2.png';

  void rollDice(){
    var diceroll = random.nextInt(6) + 1;
    setState(() {
      activediceimage = 'assets/dice-$diceroll.png';
    });
  }


  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activediceimage,
          width: 200,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                  top:20
              ),
              foregroundColor : Colors.white,
              textStyle: const TextStyle(
                  fontSize: 28)) ,
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}