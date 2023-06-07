import 'package:flutter/material.dart';

class SignInText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  SignInText(
      {this.text,
      this.fontSize,
      this.textColor,
      this.fontWeight,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
      textAlign: textAlign,
    );
  }
}
