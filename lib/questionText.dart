import 'package:flutter/material.dart';


import './result.dart';

class QuestionText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionTextState();
  }
}

class QuestionTextState extends State<QuestionText> {
  List<String> _emotions = [
    'INTERESTED',
    'EXCITED',
    'STRONG',
    'ENTHUSIASTIC',
    'PROUD',
    'ALERT',
    'INSPIRED',
    'DETERMINED',
    'ATTENTIVE',
    'ACTIVE',
    'DISTRESSED',
    'UPSET',
    'GUILTY',
    'SCARED',
    'HOSTILE',
    'IRRITABLE',
    'ASHAMED',
    'NERVOUS',
    'JITTERY',
    'AFRAID'
  ];
  List<Map<String, Object>> _choices = [
    {'choice': 'Very slightly/Not at all', 'score': 1},
    {'choice': 'A little', 'score': 2},
    {'choice': 'Moderately', 'score': 3},
    {'choice': 'Quite a bit', 'score': 4},
    {'choice': 'Extremely', 'score': 5}
  ];
  int _index = 0;
  int _totalScore = 0;

  void _answered(int score) {
    _totalScore += (_index < 10) ? score : -1 * score;
    setState(() => _index++);
  }

  // QuestionTextState(this._questionText);
  @override
  Widget build(BuildContext context) {
    return (_index >= 20)
        ? Result(_totalScore)
        : Column(children: [
            Container(
                child: Text('How much ' +
                    _emotions[_index] +
                    ' have you felt in this week ?'),
                width: double.infinity,
                margin: EdgeInsets.all(14.5)),
            ..._choices
                .map((aChoice) => RaisedButton(
                      child: Text(aChoice['choice']),
                      onPressed: () => _answered(aChoice['score']),
                    ))
                .toList()
          ]);
  }
}
