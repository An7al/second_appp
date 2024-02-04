import 'package:flutter/material.dart';
import 'package:second_app/main.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/result_screen.dart';
import 'package:second_app/start_screen.dart';
import 'package:second_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];

  var activeScreen = "startScreen";

  //  can also use keyword "late" :  works well instead of initState() method

  void switchScreen() {
    setState(() {
      activeScreen = "questions";
    });
  }

  void addAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [] ;
        activeScreen = 'results-screen';
      });

    }
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
                child: activeScreen == "results-screen"
                    ? ResultsScreen(chosenAnswers: selectedAnswers,)
                    : activeScreen == "startScreen"
                        ? StartScreen(switchScreen)
                        : QuestionsScreen(onAddAnswer: addAnswer))));
  }
}
