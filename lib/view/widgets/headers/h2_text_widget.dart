import 'package:flutter/material.dart';

class H2TextWidget extends StatelessWidget {
  final String text;

  const H2TextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
