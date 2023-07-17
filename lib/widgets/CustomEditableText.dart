import 'package:flutter/material.dart';

class CustomEditableText extends StatelessWidget {
  const CustomEditableText({
    super.key,
    required this.controller,
    required this.labelText,
    required this.style,
  });

  final TextEditingController controller;
  final String labelText;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: style,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5),
        border: InputBorder.none,
        hintText: labelText,
        hintStyle: style,
      ),
    );
  }
}
