import 'package:flutter/material.dart';

class RoundedTitleDropdown extends StatelessWidget {
  const RoundedTitleDropdown({
    super.key,
    required this.items,
    required this.hintText,
    this.value,
    required this.onChanged,
  });

  final List<String> items;
  final String hintText;
  final String? value;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      hint: Text(hintText),
      onChanged: (item) => onChanged(item!),
      items: items
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
    );
  }
}
