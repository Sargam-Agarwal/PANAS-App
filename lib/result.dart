import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;

  Result(this._score);
  Widget build(BuildContext context) {
    return Text('Your total score : ' + _score.toString());
  }
}
