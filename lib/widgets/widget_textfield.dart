import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String labelText;
  final TextEditingController textEditingController;
  final bool obscureText;

  const CustomTextField({super.key, 
  required this.labelText, 
  required this.textEditingController, 
  required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(labelText),
        border: OutlineInputBorder(),
      ),
    );
  }
}