import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int resultScore;
  final VoidCallback resultHandler;

  // const Result(this.resultScore, {super.key});
  const Result(this.resultScore, this.resultHandler, {super.key});

  // int _totalScore() {
  //   var totalScore = 0;
  //   totalScore += resultScore;

  //   return totalScore;
  // }

  // Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are awesome';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resultHandler,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
