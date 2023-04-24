import 'package:flutter/material.dart';

class CustomButtonMain extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double buttonWidth;
  final double buttonHeight;

  const CustomButtonMain({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonColor = Colors.redAccent,
    this.textColor = Colors.white,
    this.buttonWidth = double.infinity, //
    this.buttonHeight = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        minimumSize: Size(buttonWidth, buttonHeight),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}