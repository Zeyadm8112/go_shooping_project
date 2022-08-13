import 'package:e_commerce/screens/login_screen.dart';
import 'package:e_commerce/screens/sign_up_screen.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  // @override
  // _WelcomePageState createState() => _WelcomePageState();

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: mWidth * 0.02),
        height: mHeight,
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.orange,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ Colors.purple, Colors.purple[300]!])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            title(mWidth, mHeight,Colors.orange,Colors.white),
            SizedBox(
              height: 80,
            ),
            loginButton(mWidth, mHeight, context),
            SizedBox(
              height: 20,
            ),
            signUpButton(mWidth, mHeight, context),
            SizedBox(
              height: 20,
            ),
            // _label()
          ],
        ),
      ),
    );
  }
}
