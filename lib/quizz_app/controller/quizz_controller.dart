import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modal/quiz_modal.dart';
import '../view/show_bottom.dart';

class QuizController extends GetxController {
  var questionIndex = 0.obs;
  var score = 0.obs;
  var isQuiz = false.obs;
  var selectAnswer = (-1).obs;

  final List<QuizModal> questions = [
    QuizModal(
      quizQuestion: "What is Flutter?",
      options: ['A mobile app SDK', 'A programming language', 'A database', 'A web browser'],
      answerIndex: 0,
    ),
    QuizModal(
      quizQuestion: "Which language is used to write Flutter apps?",
      options: ['Java', 'Kotlin', 'Swift', 'Dart'],
      answerIndex: 3,
    ),
    QuizModal(
      quizQuestion: "What is a Widget in Flutter?",
      options: ['A component of the UI', 'A database record', 'A configuration file', 'A web service'],
      answerIndex: 0,
    ),
    QuizModal(
      quizQuestion: "What is the use of 'pubspec.yaml' file?",
      options: ['To define the app layout', 'To manage dependencies', 'To handle routing', 'To store app data'],
      answerIndex: 1,
    ),
    QuizModal(
      quizQuestion: "Which company developed Flutter?",
      options: ['Facebook', 'Apple', 'Google', 'Microsoft'],
      answerIndex: 2,
    ),
    QuizModal(
      quizQuestion: "What is a StatelessWidget?",
      options: ['A widget that does not require mutable state', 'A widget that holds state', 'A widget for animations', 'A widget for networking'],
      answerIndex: 0,
    ),
    QuizModal(
      quizQuestion: "How do you create a list of widgets in Flutter?",
      options: ['Using ListView', 'Using ListTile', 'Using GridView', 'Using Scaffold'],
      answerIndex: 0,
    ),
    QuizModal(
      quizQuestion: "What does the 'build' method do in Flutter?",
      options: ['Builds the widget tree', 'Handles navigation', 'Fetches data from a server', 'Manages app state'],
      answerIndex: 0,
    ),
    QuizModal(
      quizQuestion: "Which widget is used for creating an AppBar in Flutter?",
      options: ['Toolbar', 'NavBar', 'AppBar', 'Header'],
      answerIndex: 2,
    ),
    QuizModal(
      quizQuestion: "What is Flutter used for?",
      options: ['Web development', 'Mobile app development', 'Desktop app development', 'All of the above'],
      answerIndex: 3,
    ),
  ];

  void checkCorrectAns(int index) {
    if (!isQuiz.value) {
      selectAnswer.value = index;
      isQuiz.value = true;
      if (index == questions[questionIndex.value].answerIndex) {
        score.value++;
      }
    }
  }

  void changeQuestion(BuildContext context) {
    if (questionIndex.value < questions.length - 1) {
      questionIndex.value++;
      isQuiz.value = false;
      selectAnswer.value = -1;
    } else {
      showScoreBottomSheet(context, score.value, questions.length);
    }
  }
  void restartQuiz() {
    questionIndex.value = 0;
    score.value = 0;
    isQuiz.value = false;
    selectAnswer.value = -1;
  }
}
