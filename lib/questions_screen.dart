import 'package:flutter/material.dart';
import 'package:second_app/answer_bottun.dart';
import 'package:second_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onAddAnswer, super.key});

  final void Function(String answer) onAddAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void nextQuestion(String selectedAnswer) {
      setState(() {
        widget.onAddAnswer(selectedAnswer);
        currentQuestionIndex++;
      });
    }

    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
        width: double.infinity, // Box gets the whole width of screen
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.question,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                ...currentQuestion.schuffleList().map((answer) {
                  return AnswerButton(
                      answer: answer,
                      onTap: () {
                        nextQuestion(answer);
                      });
                }),
                const SizedBox(
                  height: 15,
                ),
              ]),
        ));
  }
}
