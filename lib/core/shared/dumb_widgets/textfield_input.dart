// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;

  const TextFieldInput({
    super.key,
    required this.controller,
    required this.labelText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            labelText: labelText,
            fillColor: Colors.green.withOpacity(0.2),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green.withOpacity(0.8),
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green.withOpacity(0.8),
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green.withOpacity(0.8),
              ),
              borderRadius: BorderRadius.circular(0),
            )));
  }
}
