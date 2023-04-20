import 'package:flutter/material.dart';
import 'package:my_dice_app/gradient_model.dart';

void main() {
  runApp(const MyDiceApp());
}

class MyDiceApp extends StatelessWidget {
  const MyDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientModel([Colors.blue, Colors.cyan]),
      ),
    );
  }
}
