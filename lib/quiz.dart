import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  // const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(questions[questionIndex]['questionText'].toString()),

      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score'] as int),
            answer['text'].toString()
            //working piece
            //(answer) => Answer(answerQuestion(), answer['text'].toString(), answer['score'] as int)

            //);
            );
      }).toList()

      /**When you implement the code with another 
       * logic it is only questionIndex that needs
       * to be passed to the constructor of
       * Question() in main file but Answer requires
       * a Function in addition. Then the function that will
       * be passed to that function in main will
       * increase questionIndex and change state
       */

      // Answer(_answerQuestion),
      // Answer(_answerQuestion),
      // Answer(_answerQuestion),
    ]);
  }
}
