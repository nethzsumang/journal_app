import 'package:flutter/material.dart';

class H4TextWidget extends StatelessWidget {
  final String text;

  const H4TextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
