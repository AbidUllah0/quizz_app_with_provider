import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  String btnText;
  VoidCallback onPressed;
  double? fontSize;
  double? btnHeight;
  double? btnWidth;

  CustomButton(
      {required this.btnText,
      required this.onPressed,
      this.fontSize,
      this.btnHeight = 50,
      this.btnWidth = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(btnWidth!, btnHeight!),
        ),
        child: CustomText(
          text: btnText,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
