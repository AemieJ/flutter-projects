import 'package:design_102/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;

  CustomButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: accentColor,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
