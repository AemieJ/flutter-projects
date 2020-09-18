import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() => runApp(MyUI());

class MyUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design-101',
      home: Homepage(),
    );
  }
}