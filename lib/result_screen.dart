import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen( {super.key, required this.chosenAnswers});
  final List<String> chosenAnswers ;

   List<Map<String,Object>> getSummaryData (){
     final List<Map<String,Object>> summary [] ;
    for(var i = 0 ; i< chosenAnswers.length ; i++){
      summary.add(
        {
          'questionIndex' : i ,
          'question' : questions[i].Text,
          'correct_ansewr' : questions[i].answer,


        }
      )
    }

  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(20),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You answered X out of Y questions correctly '),
                const SizedBox(height: 30,),
                const Text("Answers list "),
                const SizedBox(height: 30,),
                OutlinedButton(onPressed: (){} , child: const Text("restart Quiz ! "))
              ],
            )));
  }
}
