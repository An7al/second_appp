import 'package:flutter/material.dart';
import 'package:second_app/answer_bottun.dart';
import 'package:second_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex =  0 ;
  @override
  Widget build(BuildContext context) {
    void nextQuestion() {
      setState(() {
        currentQuestionIndex ++ ;
      });
    }
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
        width: double.infinity, // Box gets the whole width of screen
        child: Container(
          margin: const EdgeInsets.all(20) ,
          child: Column
            (mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center ,
            ),
            const SizedBox(
              height: 15,
            ),
            ...currentQuestion.schuffleList().map((e) {
              return AnswerButton(answer: e, onTap: nextQuestion);
            }),
            const SizedBox(
              height: 15,
            ),
          ]),
        ));
  }
}
