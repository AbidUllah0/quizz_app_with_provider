import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/custom_button.dart';

import '../../../widgets/custom_text.dart';

class ResultWidget extends StatelessWidget {
  final int resultScore;
  VoidCallback reset;

  ResultWidget({required this.resultScore, required this.reset});

  String resultPhrase() {
    String resultText;
    if (resultScore >= 20) {
      resultText = 'You are ... Strange';
    } else if (resultScore >= 15 && resultScore < 20) {
      resultText = 'Pretty Likeable';
    } else if (resultScore >= 10 && resultScore < 15) {
      resultText = 'You are Awesome and Innocent';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: resultPhrase(),
            fontSize: 36,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: 'Your Score is : ${resultScore}',
            fontSize: 20,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 30),
          CustomButton(
            btnText: 'Restart Quizz',
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
