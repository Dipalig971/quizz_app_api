import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/quizz_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff2E4C56),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Obx(() => Text(
              'Question ${quizController.questionIndex.value + 1}/${quizController.questions.length}',
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 20),
            Obx(() => Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border:
                Border.all(color: const Color(0xff2E4D56), width: 2),
              ),
              child: Text(
                quizController.questions[quizController.questionIndex.value]
                    .quizQuestion,
                style: const TextStyle(fontSize: 18),
              ),
            )),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: quizController
                    .questions[quizController.questionIndex.value]
                    .options
                    .length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: quizController.selectAnswer.value == index
                            ? (index ==
                            quizController
                                .questions[quizController
                                .questionIndex.value]
                                .answerIndex
                            ? Colors.green
                            : Colors.red)
                            : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      title: Text(quizController
                          .questions[quizController.questionIndex.value]
                          .options[index]),
                      onTap: () {
                        quizController.checkCorrectAns(index);
                      },
                      tileColor: quizController.selectAnswer.value == index
                          ? (index ==
                          quizController
                              .questions[quizController
                              .questionIndex.value]
                              .answerIndex
                          ? Colors.green.withOpacity(0.5)
                          : Colors.red.withOpacity(0.5))
                          : Colors.transparent,
                    ),
                  );
                },
              )),
            ),
            const SizedBox(width: 50,),
            InkWell(
                    onTap: () {
                      quizController.changeQuestion(context);
                    },
                    child: Center(
                      child: Container(
                        height: 70,
                        width: 280,
                        decoration: BoxDecoration(
                          color: const Color(0xff2E4D56),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                            child: Text(
                              'Next Question ->',
                              style: TextStyle(color: Colors.white, fontSize: 25),
                            ))
                                    ),
                    )
            ),
          ],
        ),
      ),
    );
  }
}
