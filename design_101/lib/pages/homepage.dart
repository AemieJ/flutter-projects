import 'package:flutter/material.dart';
import '../widget/stacked_icons.dart';
import 'login.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StackedIcons(),
            SizedBox(
              height: 25
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Algiliro Quebirst', 
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Laila',
                    fontWeight: FontWeight.w600,
                  )
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            child: Text('Sign In With Email',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )
                            ),
                          ),
                        )
                    )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Container(
                        child: Row(
                          children: [
                            Padding (
                              padding: EdgeInsets.only(right: 10),
                              child: Container(
                                width: 130,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF4364A1),
                                ),
                                child: Text('Facebook',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                  )
                                ),
                              ),
                            ),
                            Padding (
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                width: 130,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFFDF513B),
                                ),
                                child: Text('Google',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                  )
                                ),
                              )
                            ),
                          ],
                        )
                      )
                    )
                  )
                ],
              ),
          ],
        ),
      )
    )
    );
  }
}