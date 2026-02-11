import 'package:flutter/material.dart';
import '../constants/color.dart';
class SignTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  const SignTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        style: TextStyle(
          color: textFieldTextColor
        ),
        obscureText: obsecureText,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:BorderSide(color: focusBorderColor) ),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: hintText,
            hintStyle: TextStyle(
                color: hintTextColor
            )
        ),
      ),
    );
  }
}
