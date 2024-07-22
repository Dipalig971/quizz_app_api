import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app_api/quizz_app/view/home_screen.dart';
import 'package:quizz_app_api/quizz_app/view/intro_Screen.dart';
import 'package:quizz_app_api/quizz_app/view/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SplashScreen(),
        '/intro':(context) => const IntroScreen(),
        '/home':(context) =>  HomeScreen(),
      },

    );
  }
}

