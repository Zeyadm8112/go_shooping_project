import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/utility/app_colors.dart';
import 'package:e_commerce/view/screens/main_screen.dart';
import 'package:e_commerce/view/screens/on_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            SizedBox(
              // color: Colors.white,
              height: mHeight * 0.4,
              width: mWidth * 0.4,
              child: FittedBox(child:             Image.asset(
              'assets/images/applogo1.png',
            ),
            fit: BoxFit.fitWidth,
),
            ),

            // Image.asset(
            //   'assets/images/applogo.png',
            //   scale: mHeight * 0.0005,
            // ),
            // SizedBox(
            //   height: mHeight * 0.02,
            // ),
            Image.asset('assets/images/appname.png'),
          ],
        ),
      ),
      splashIconSize: mHeight * 0.6,
      backgroundColor: AppColors.primaryColor,
      splashTransition: SplashTransition.slideTransition,
            nextScreen: sharedPref!.getString('roleName')==null?OnBoardScreen():MainScreen()

    );
  }
}
