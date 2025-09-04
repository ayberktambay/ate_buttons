import 'package:flutter/material.dart';

class AteButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double borderRadius;

  const AteButton({
    required this.text,
    required this.color,
    required this.onPressed,
    this.borderRadius = 8.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(text),
    );
  }
}