import 'package:epkl/shared/shared_methods.dart';
import 'package:epkl/shared/theme.dart';
import 'package:flutter/material.dart';

class RoundedNotificationButton extends StatelessWidget {
  const RoundedNotificationButton({
    super.key,
    required this.text,
    required this.icon,
    this.bgColor,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final Color? bgColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: bgColor ?? whiteColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity,
          height: 42,
          child: Row(
            children: [
              Text(
                text,
                style: getColorForBackground(bgColor),
              ),
              const Spacer(),
              Icon(
                icon,
                color: getColorForBackground(bgColor, isText: false),
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
