import 'package:flutter/material.dart';

import './questionText.dart';

void main() => runApp(PanasApp());

class PanasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Positive Negative Affect Schedule'),
      ),
      body: QuestionText(),
    ));
  }
}
