import 'package:flutter/material.dart';

class QuizzProvider with ChangeNotifier {
  int _questionIndex = 0;
  int _totalScore = 0;

  int get questionIndex => _questionIndex;
  int get totalScore => _totalScore;

  void setQuestionIndex(int index) {
    _questionIndex = index;
    notifyListeners();
  }

  void setTotalScore(int score) {
    _totalScore = score;
    notifyListeners();
  }

  /// int score to calculate total score
  void answerQuestion(int score) {
    _totalScore = totalScore + score;
    _questionIndex = questionIndex + 1;
    if (questionIndex < questionsAnswerList.length) {
      print('we have more questions ');
    } else {
      print('No More Questions');
    }
    notifyListeners();
  }

  ///reset quizz
  void resetQuizz() {
    _questionIndex = 0;
    _totalScore = 0;
    notifyListeners();
  }

  /// final List<Map<String, dynamic>> questionsAnswerList or
  final List<Map<String, dynamic>> questionsAnswerList = [
    {
      'questions': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questions': 'What is your favorite Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snack', 'score': 12},
        {'text': 'Lion', 'score': 7},
        {'text': 'Elephant', 'score': 8},
      ],
    },
    {
      'questions': 'Who is your favorite Instructor?',
      'answers': [
        {'text': 'Mumtaz', 'score': 10},
        {'text': 'Fareed', 'score': 5},
        {'text': 'Adnan', 'score': 9},
        {'text': 'Roman', 'score': 6},
      ],
    }
  ];
}
