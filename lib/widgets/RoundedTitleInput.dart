import 'package:epkl/shared/theme.dart';
import 'package:flutter/material.dart';

class RoundedTitleInput extends StatelessWidget {
  RoundedTitleInput({
    super.key,
    this.controller,
    required this.title,
    this.suffixIcon,
    this.readOnly = false,
  });

  final String title;
  final Icon? suffixIcon;
  final bool readOnly;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackText.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 327,
          child: TextFormField(
            controller: controller,
            readOnly: readOnly,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              filled: readOnly == true,
              fillColor: readOnly == true ? greyColor.withOpacity(0.2) : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              contentPadding: const EdgeInsets.all(16),
            ),
          ),
        )
      ],
    );
  }
}
