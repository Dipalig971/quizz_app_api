import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showScoreBottomSheet(BuildContext context, int score, int totalQuestions) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: const Color(0xff2E4C56),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Quiz Completed!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                'Your Score: $score / $totalQuestions',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                  Get.back(); // Navigate back to the previous screen or home screen
                },
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      );
    },
  );
}