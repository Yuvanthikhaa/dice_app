import 'package:dice_app/diceroller.dart';
import 'package:flutter/material.dart';

const startt = Alignment.topCenter;
const endd = Alignment.bottomCenter;

class Gradientt extends StatelessWidget {
  Gradientt(this.color1, this.color2, this.color3, {super.key});
  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2, color3], begin: startt, end: endd)),
        child: Center(
          child: DiceRoller(),
        ));
  }
}
