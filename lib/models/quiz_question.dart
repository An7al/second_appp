class QuizQuestions {
  final String question ;
  final List<String> answers ;
  const QuizQuestions (this.question,this.answers);

  List<String> schuffleList (){
    final shuffled = List.of(answers);
       shuffled.shuffle();
    return shuffled ;
  }
}