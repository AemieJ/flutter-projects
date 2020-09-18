import 'package:flutter/material.dart';

import 'widget/question.dart';
import 'widget/answer.dart';
import 'widget/result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  int _questionIndex = 0;
  int _totalScore = 0;
  double _percentageLikeable = 0;

  void _answerChosen(int score) {
    _totalScore += score;
    _percentageLikeable = (_totalScore/30) * 100;
    setState(() {
      ++_questionIndex;
    });
  }

  void _resetResult() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _percentageLikeable = 0;
    });
  }

  final questions = const [
    {
      'ques': 'What\'s the most frequent language used for web?',
      'ans': [{'ch': 'Javascript', 'score': 10}, 
              {'ch': 'Python', 'score': 8}, 
              {'ch': 'Ruby', 'score': 2},
              {'ch': 'Go', 'score': 7}]
    },
    {
      'ques': 'How many hours per week do you work?',
      'ans': [{'ch': '20', 'score': 1},
              {'ch': '25', 'score': 3},
              {'ch': '30', 'score': 4},
              {'ch': '35', 'score': 7},
              {'ch': '40+', 'score': 10}]
    },
    {
      'ques': 'Inspite of this pandemic, do you continue to roam and eat outside?',
      'ans': [{'ch': 'Frequently', 'score': 2},
              {'ch': 'Rarely', 'score': 5},
              {'ch': 'Never', 'score': 10}]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: (_questionIndex < questions.length) ? Column(
            children: [
              Question(questionText: questions[_questionIndex]['ques']),
              ...(questions[_questionIndex]['ans'] as List<Map<String, Object>>).map((answer) {
                return Answer(stateHandler: () => _answerChosen(answer['score']), choice: answer['ch']);
              }).toList(),
            ]
        ) : Result(result: _percentageLikeable, resetResult: _resetResult)
      ),
    );
  }
}
