import 'package:flutter/material.dart';
import 'package:quizz_app_api/quizz_app/view/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff2E4C56),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 150),
            child: Center(
                child: SizedBox(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: AssetImage('assets/image/intro.png'),
                      fit: BoxFit.cover,
                    ))),
          ),
          const SizedBox(height: 10,),
           const Text(
            'Quizzy',
            style: TextStyle(
                color: Color(0xff2E4D56),
                fontWeight: FontWeight.w500,
                fontSize: 55),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Container(
                height: 70,
                width: 300,
                decoration:  BoxDecoration(
                  color: const Color(0xff2E4D56),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
