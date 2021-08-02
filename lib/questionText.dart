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
  int _positiveScore = 0;
  int _negativeScore = 0;

  void _answered(int score) {
    if (_index < 10)
      _positiveScore += score;
    else
      _negativeScore += score;
    setState(() => _index++);
  }

  @override
  Widget build(BuildContext context) {
    return (_index >= 20)
        ? Result(_positiveScore, _negativeScore)
        : Column(children: [
            Container(
              child: Text(
                'How much ' +
                    _emotions[_index] +
                    ' have you felt in this week ?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w300),
              ),
              width: double.infinity,
              margin: EdgeInsets.only(top: 50, bottom: 80, left: 15, right: 15),
            ),
            ..._choices
                .map((aChoice) => RaisedButton(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(
                          color: Colors.pink[700],
                        ),
                      ),
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      child: Text(aChoice['choice']),
                      onPressed: () => _answered(aChoice['score']),
                    ))
                .toList()
          ]);
  }
}
