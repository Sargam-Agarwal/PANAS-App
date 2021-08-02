import 'package:flutter/material.dart';

import './questionText.dart';

void main() => runApp(PanasApp());

class PanasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text('Positive Negative Affect Schedule'),
      ),
      body: QuestionText(),
    ));
  }
}
