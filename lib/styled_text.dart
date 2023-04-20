import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.yourText, {super.key});

  final String yourText;

  @override
  Widget build(BuildContext context) {
    return Text(
      yourText,
      style: const TextStyle(
        fontSize: 34,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
