import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  double? letterSpacing;
  TextAlign? textAlign;

  CustomText(
      {required this.text,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.fontSize,
      this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
