import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler; 
  final String choice;

  Answer({this.stateHandler, this.choice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 18, right: 18),
      child: OutlineButton(
                child: Text(choice),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black38)
                ),
                onPressed: stateHandler,
              ),
    );
  }
}