import 'package:flutter/material.dart';
import 'package:fablabapp/pallete.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String hintText; // Add the hintText parameter

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.hintText, // Initialize the hintText parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF9EBD13),
            Color(0xAA9EEA13),// Start color (#9EBD13)
            Color(0xFF008552),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          hintText, // Use the provided hintText as the button text
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
