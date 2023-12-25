import 'package:flutter/material.dart';

class H1TextWidget extends StatelessWidget {
  final String text;

  const H1TextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
