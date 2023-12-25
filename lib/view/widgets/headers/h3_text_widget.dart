import 'package:flutter/material.dart';

class H3TextWidget extends StatelessWidget {
  final String text;

  const H3TextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
