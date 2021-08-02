import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _positiveScore;
  final int _negativeScore;

  Result(this._positiveScore, this._negativeScore);
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 300, horizontal: 13),
      child: Column(
        children: [
          Text(
            'Positive emotion score : ' + _positiveScore.toString(),
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          ),
          Text(
            'Negative emotion score : ' + _negativeScore.toString(),
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
