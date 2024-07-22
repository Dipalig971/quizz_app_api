import 'dart:async';

import 'package:flutter/material.dart';

import 'intro_Screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/intro');
    });
    return Scaffold(
      backgroundColor: const Color(0xff2E4C56),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
                  height: 150,
                  width: 150,
                  child: const Image(
                    image: AssetImage('assets/image/logo.png'),
                    fit: BoxFit.cover,
                  ))),
          const Text(
            'Quizzy',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 55),
          )
        ],
      ),
    );
  }
}
