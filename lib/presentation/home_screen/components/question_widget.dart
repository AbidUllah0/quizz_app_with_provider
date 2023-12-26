import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/custom_text.dart';

class QuestionWidget extends StatelessWidget {
  String questionText;

  QuestionWidget({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: questionText,
      textAlign: TextAlign.center,
      fontSize: 28,
    );
  }
}
