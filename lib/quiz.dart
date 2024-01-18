import 'package:flutter/material.dart';
import 'package:second_app/main.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
   late Widget activeScreen =  StartScreen(switchScreen); // works well instead of initState() method
   void switchScreen(){
    setState(() {
      activeScreen =   const QuestionsScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child:  activeScreen,
    )));
  }
}

