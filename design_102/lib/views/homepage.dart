import 'package:design_102/custom_widgets/custom_button.dart';
import 'package:design_102/utilities/constants.dart';
import 'package:design_102/views/sliding_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
      ),
      body: Container(
        width: width,
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              width: 286.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sympanthre',
                      style: TextStyle(
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'This is the real fashion',
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: 110.0,
                    height: 1.0,
                    color: accentColor,
                  ),
                  SizedBox(height: 15.0),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SlidingPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/images/img1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
