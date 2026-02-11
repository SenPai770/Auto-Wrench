import 'package:autowrench/constants/color.dart';
import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final double borderRadius;
  final Color textColor;

  const MyButton2({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = buttonBackgroundColor,
    this.borderRadius = 12,
    this.textColor = buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
