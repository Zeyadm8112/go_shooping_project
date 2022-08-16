import 'package:e_commerce/utility/widgets.dart';
import 'package:e_commerce/view/screens/edit_profile_screen.dart';
import 'package:e_commerce/view/screens/main_screen.dart';
import 'package:e_commerce/view/screens/wishlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../utility/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // مشروحة في صفحة اديت البروفيل
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    const Color primaryColor = Color(0xff432267);
    const Color secondaryColor = Color(0xffE99000);

    return SafeArea(
      // مشروحة في صفحة اديت الويشليست
      child: ZoomDrawer(
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        drawerShadowsBackgroundColor: Colors.grey[300]!,
        slideWidth: mWidth * 0.65,
        menuBackgroundColor: AppColors.primaryColor,
        menuScreen: appDrawer(mWidth, mHeight, context),
        mainScreen: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: mWidth,
                      height: mHeight * 0.32,
                      color: AppColors.primaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: mHeight * 0.06,
                          ),
                          Container(
                            height: mHeight * 0.12,
                            width: mWidth * 0.2,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.network(
                              'http://cdn.onlinewebfonts.com/svg/img_24787.png',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: mHeight * 0.02,
                          ),
                          Text(
                            "Heba hany",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: mHeight * 0.035,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "heba_hany@example.com",
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: mHeight * 0.028,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MenuIcon(mHeight, context),
                          Text("Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mHeight * 0.03,
                                  fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen());
                              },
                              icon: ImageIcon(
                                AssetImage('assets/images/home.png'),
                                color: Colors.white,
                                size: mHeight * 0.04,
                              ))
                        ]),
                  ],
                ),
                SizedBox(height: mHeight * 0.04),
                InkWell(
                  onTap: () {
                    MaterialPageRoute(
                        builder: (context) => const EditProfileScreen());
                  },
                  child: Container(
                    height: mHeight * 0.08,
                    width: mWidth * 0.8,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/images/edit.png'),
                          color: Colors.orangeAccent,
                        ),
                      ),
                      Text("Edit profile",
                          style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ]),
                  ),
                ),
                SizedBox(
                  height: mHeight * 0.03,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: mHeight * 0.08,
                    width: mWidth * 0.8,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/images/cart.png'),
                          color: secondaryColor,
                        ),
                      ),
                      Text("Cart",
                          style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ]),
                  ),
                ),
                SizedBox(
                  height: mHeight * 0.03,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: mHeight * 0.08,
                    width: mWidth * 0.8,
                    decoration: BoxDecoration(
                        color:primaryColor,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/images/heartorange.png'),
                          color: secondaryColor,
                        ),
                      ),
                      Text("Wishlist",
                          style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ]),
                  ),
                ),
                SizedBox(
                  height: mHeight * 0.03,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: mHeight * 0.08,
                    width: mWidth * 0.8,
                    decoration: BoxDecoration(
                        color:primaryColor,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/images/orderhistory.png'),
                          color: secondaryColor,
                        ),
                      ),
                      Text("Order History",
                          style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ]),
                  ),
                ),
                SizedBox(
                  height: mHeight * 0.03,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: mHeight * 0.08,
                    width: mWidth * 0.8,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit_calendar_rounded,
                          color:secondaryColor,
                        ),
                      ),
                      Text("Cards",
                          style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
