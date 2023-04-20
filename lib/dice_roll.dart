import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png' ;

  void rollDice() {
    setState(() {
       var currDiceImage = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$currDiceImage.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(onPressed: rollDice, child: const Text('Roll Dice'))
      ],
    );
  }
}
