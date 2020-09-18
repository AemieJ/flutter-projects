import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double result;
  final Function resetResult; 

  Result({this.result, this.resetResult});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'You\'ve reached to the end of questions! You\'re ${result.toStringAsFixed(2)}% likeable by me. ',
            style: TextStyle(fontFamily: 'Dancing', fontSize: 25),
            textAlign: TextAlign.center,
          )
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: 
          FlatButton.icon(
            label: Text(
              'Reset Quiz', 
              style: TextStyle(
                fontSize: 22, 
                fontFamily: 'Dancing', 
                fontWeight: FontWeight.bold
              )
            ),
            icon: Icon(Icons.arrow_back),
            onPressed: resetResult,
          ),
        )
      ],
    );
  }
}
