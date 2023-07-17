import 'package:flutter/material.dart';

class LongTextInput extends StatelessWidget {
  const LongTextInput({
    super.key,
    required this.controller,
    required this.style,
  });

  final TextEditingController controller;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: style,
      maxLines: null,
      decoration: InputDecoration(
        hintText: "Detail jurnal...",
        hintStyle: style,
        border: InputBorder.none,
      ),
    );
  }
}
