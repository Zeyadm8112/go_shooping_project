import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:e_commerce/view/screens/fashion_screen.dart';
import 'package:e_commerce/view/screens/home_screen.dart';
import 'package:e_commerce/view/screens/cart_screen.dart';
import 'package:e_commerce/view/screens/favourite_screen.dart';
import 'package:e_commerce/view/screens/notifications_Screen.dart';
import 'package:e_commerce/view_model/main_screen_view_model.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import '../../utility/app_colors.dart';
import '../../view_model/onboarding_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    var provider = Provider.of<MainScreenViewModel>(context);

    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: ZoomDrawer(
          borderRadius: 24.0,
          showShadow: true,
          angle: 0.0,
          drawerShadowsBackgroundColor: Colors.grey[300]!,
          slideWidth: mWidth * 0.65,
          menuBackgroundColor: AppColors.primaryColor,
          menuScreen: appDrawer(mWidth, mHeight,context),
          mainScreen: PageView(
              controller: pageController,
              onPageChanged: (val) {
                provider.changeScreenIndex(val);
              },
              children: [HomeScreen(), FashionScreen()]),
        ),
      ),
    );
  }
}
