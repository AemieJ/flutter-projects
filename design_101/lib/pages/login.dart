import 'package:flutter/material.dart';
import '../widget/stacked_icons.dart';
import './explore.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
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
            Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email' 
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password' 
                        )
                      ),
                    ),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Explore()
                                  ));
                              },
                              child: Padding (
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFF45B0AC),
                                  ),
                                  child: Text('Login',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white
                                    )
                                  ),
                                ),
                              ),
                            ),
                            Padding (
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                width: 130,
                                height: 40,
                                alignment: Alignment.center,
                                child: Text('Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF45B0AC),
                                    fontWeight: FontWeight.w500
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Create An Account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF45B0AC),
                        fontWeight: FontWeight.w500
                      )
                    )
                  ],
                  ),
                )
            )
          ]
          )
        )
    );
  }
}