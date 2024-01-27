import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Box gets the whole width of screen
      child: Column(
        children: [
          Text(questions[pageNumber].question),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {}, child: Text(questions[pageNumber].answers[0])),
          ElevatedButton(
              onPressed: () {}, child: Text(questions[pageNumber].answers[1])),
        ],
      ),
    );
  }
}
