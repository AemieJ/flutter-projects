import 'package:design_102/custom_widgets/custom_button.dart';
import 'package:design_102/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SlidingPage extends StatefulWidget {
  @override
  _SlidingPageState createState() => _SlidingPageState();
}

class _SlidingPageState extends State<SlidingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 20.0,
          icon: Icon(
            Icons.arrow_back_ios,
            color: accentColor,
          ),
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: Column(
          children: <Widget>[
            Expanded(
              child: IntroductionScreen(
                key: introKey,
                pages: [
                  _customPageViewModel(
                    title: 'Explore Fashion',
                    subTitle:
                        'Style in your own way and we make sure we’ve an outfit for all types',
                    image: 'assets/images/img2.png',
                  ),
                  _customPageViewModel(
                    title: 'Select from the Best',
                    subTitle:
                        '2020 hottest trends and fashion is just a click away!',
                    image: 'assets/images/img3.png',
                  ),
                  _customPageViewModel(
                    title: 'Get to be YOU',
                    subTitle:
                        'Millions of combinations and we know the best kind of outfit for you',
                    image: 'assets/images/img4.png',
                  ),
                ],
                onDone: () {},
                done: Container(
                  color: accentColor,
                ),
                dotsDecorator: const DotsDecorator(
                  size: Size(10.0, 10.0),
                  color: Colors.white60,
                  activeColor: accentColor,
                  spacing: const EdgeInsets.fromLTRB(4.0, 30.0, 4.0, 200.0),
                  activeSize: Size(22.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),
            CustomButton(
              onPressed: () {},
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  PageViewModel _customPageViewModel(
      {String title, String subTitle, String image}) {
    return PageViewModel(
      decoration: PageDecoration(pageColor: backgroundColor),
      titleWidget: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      bodyWidget: SizedBox(),
      image: Image.asset(image),
    );
  }
}
