import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Dancing',
          ),
          textAlign: TextAlign.center,
        )
      );
  }
}
