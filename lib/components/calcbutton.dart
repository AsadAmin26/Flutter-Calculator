//Custom widget for calculator button
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color? buttonColor;
  final VoidCallback onPressFun;

  const Button(
      {required this.title,
      this.buttonColor,
      required this.onPressFun,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          onTap: onPressFun,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttonColor,
            ),
            child: Center(
              child: Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
