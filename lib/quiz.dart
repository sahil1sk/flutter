import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; // we have list of Map which also contains String Object
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']), // we are not able to use questions[_questionIndex].questionText
        // so here it will ... make the new list 
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) => Answer(() => answerQuestion(answer['score']), answer['text'])).toList()
      ],
    );  
  }
}