import 'package:flutter/material.dart';
import 'package:journal_app/constants/dimensions.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double radiusSize;
  final MaterialColor fillColor;

  const ElevatedButtonWidget({
    required this.text,
    super.key,
    this.onPressed,
    this.radiusSize = Dimensions.buttonRadiusSize,
    this.fillColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(
          Dimensions.buttonMinimumSize,
        ),
        backgroundColor: fillColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radiusSize,
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
