import 'package:flutter/material.dart';

class Buttoncommon extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Buttoncommon({
    Key? key,
    this.text = "Button",
    this.onPressed = _defaultOnPressed,
  }) : super(key: key);

  static void _defaultOnPressed() {
    print("Button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 44,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF003191), Color(0xFF00AEEF)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
