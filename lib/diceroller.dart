import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //var diceimg = "assets/dice-1.png";
  var dice = Random().nextInt(6) + 1;
  void dicebutton() {
    setState(() {
      dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/dice-$dice.png',
          height: 100,
          width: 100,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: dicebutton,
          style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              surfaceTintColor: Colors.black),
          child: Text(
            "roll",
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
