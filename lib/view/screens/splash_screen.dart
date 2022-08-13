import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce/screens/on_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      splashIconSize:  200,
      backgroundColor: Colors.purple,
      nextScreen: OnBoardScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}