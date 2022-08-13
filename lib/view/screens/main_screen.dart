import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/screens/cart_screen.dart';
import 'package:e_commerce/screens/favourite_screen.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/notifications_Screen.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  final List<Widget> _pages = [
    HomeScreen(),
    WishListScreen(),
    CartScreen(),
    NotiFacationsScreen(),
  ];
  int _selectedPageindex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedPageindex],
        bottomNavigationBar: CurvedNavigationBar(
          height: mHeight * 0.1,
          backgroundColor: Colors.purple,
          key: _bottomNavigationKey,
          onTap: (index) {
            setState(() {
              _selectedPageindex = index;
            });
          },
          items: const [
            Icon(Icons.home_outlined),
            Icon(Icons.favorite_outline),
            Icon(Ionicons.cart_outline),
            Icon(Icons.notifications_outlined)
          ],
        ),
      ),
    );
  }
}
