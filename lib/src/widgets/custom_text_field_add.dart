import 'package:flutter/material.dart';

class CustomTextFieldAdd extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final double height;
  final double width;

  const CustomTextFieldAdd({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.height = 55.0,
    this.width = double.infinity, // Set the width to infinity by default
    required TextEditingController controller,
    required TextInputType keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          filled: true,
          fillColor: Colors.white,
          labelStyle: const TextStyle(color: Colors.black),
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo),
          ),
        ),
      ),
    );
  }
}// TODO Implement this library.