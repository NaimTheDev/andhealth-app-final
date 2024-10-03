import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFFFFA500)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFF8C00)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFF4500), width: 2),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      style: TextStyle(color: Color(0xFF333333)),
    );
  }
}