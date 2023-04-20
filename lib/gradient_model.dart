import 'package:flutter/material.dart';
import 'package:my_dice_app/dice_roller.dart';

class GradientModel extends StatelessWidget {
  const GradientModel(this.yourColors, {super.key});

  final List<Color> yourColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: yourColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
