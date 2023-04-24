import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color backgroundColor;

  const CustomAddButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
      backgroundColor: backgroundColor,
    );
  }
}