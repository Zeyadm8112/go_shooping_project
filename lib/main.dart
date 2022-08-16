import 'package:e_commerce/utility/app_colors.dart';
import 'package:e_commerce/view/screens/cart_screen.dart';
import 'package:e_commerce/view/screens/edit_profile_screen.dart';
import 'package:e_commerce/view/screens/home_screen.dart';
import 'package:e_commerce/view/screens/login_screen.dart';
import 'package:e_commerce/view/screens/main_screen.dart';
import 'package:e_commerce/view/screens/order_screen.dart';
import 'package:e_commerce/view/screens/register_screen.dart';
import 'package:e_commerce/view/screens/splash_screen.dart';
import 'package:e_commerce/view_model/main_screen_view_model.dart';
import 'package:e_commerce/view_model/onboarding_view_model.dart';
import 'package:e_commerce/view_model/wishlist_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => OnBoardingViewModel(),
    ),
    ChangeNotifierProvider(create: (context) => MainScreenViewModel()),
    ChangeNotifierProvider(create: (context) => WishlistViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Shop',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          textTheme: TextTheme(),
          primaryColor: AppColors.primaryColor,
          backgroundColor: AppColors.appColorWhite),
      home: SplashScreen(),
      routes: {
        '/LoginScreen': (context) => LoginScreen(),
        '/RegisterScreen': (context) => RegisterScreen(),
        '/HomeScreen': (context) => MainScreen(),
        '/MainScreen': (context) => MainScreen(),
        '/EditProfileScreen': (context) => EditProfileScreen(),
        '/OrderScreen': (context) => OrderScreen(),
        '/CartScreen': (context) => CartScreen(),
      },
    );
  }
}
