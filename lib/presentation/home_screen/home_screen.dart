import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz_app/presentation/home_screen/components/question_widget.dart';
import 'package:quizz_app/presentation/home_screen/components/result_widget.dart';
import 'package:quizz_app/provider/quizz_provider.dart';
import 'package:quizz_app/widgets/custom_button.dart';

import '../../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizzProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'QUIZZ APP',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: provider.questionIndex < provider.questionsAnswerList.length
          ? SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // CustomText(
                    //   text: questionsAnswerList[questionIndex]['questions'],
                    // ),
                    QuestionWidget(
                      questionText:
                          provider.questionsAnswerList[provider.questionIndex]
                              ['questions'],
                    ),
                    SizedBox(height: 30),
                    // ...(questionsAnswerList[questionIndex]['answers'] as List<String>)
                    //     .map((answer) {
                    //   return CustomButton(
                    //     btnText: answer["text"].toString,
                    //     onPressed: () {
                    //       answerQuestion();
                    //     },
                    //   );
                    // }).toList()
                    ///     OR
                    for (var answers in provider
                        .questionsAnswerList[provider.questionIndex]['answers'])

                      /// Answer Button
                      CustomButton(
                        /// text is the key n answer list
                        btnText: answers['text'],

                        onPressed: () {
                          provider.answerQuestion(answers['score']);
                        },
                      ),
                  ],
                ),
              ),
            )
          : ResultWidget(
              resultScore: provider.totalScore,
              reset: () {
                provider.resetQuizz();
              },
            ),
    );
  }
}
