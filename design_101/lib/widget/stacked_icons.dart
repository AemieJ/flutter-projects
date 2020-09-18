import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFFFC6A7F),
            ),
            child: Icon(
              Icons.local_offer,
              color: Colors.white,
            )),
        Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(top: 20, left: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFFFFCE56),
            ),
            child: Icon(
              Icons.wallet_membership,
              color: Colors.white,
            )),
        Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(right: 70, top: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF18D191),
            ),
            child: Icon(
              Icons.home_repair_service,
              color: Colors.white,
            )),
        Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(top: 80, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF45E0EC),
            ),
            child: Icon(
              Icons.collections_bookmark,
              color: Colors.white,
            ))
      ],
    );
  }
}
