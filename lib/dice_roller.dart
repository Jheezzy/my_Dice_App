import 'dart:math';

import 'package:flutter/material.dart';

final randomNum = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = randomNum.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$currentDice',
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 30),
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 300,
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              )),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
