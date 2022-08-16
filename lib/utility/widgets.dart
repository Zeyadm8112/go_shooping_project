import 'package:e_commerce/model/data/image_data.dart';
import 'package:e_commerce/utility/app_colors.dart';
import 'package:e_commerce/view/screens/profile_screen.dart';
import 'package:e_commerce/view/screens/ui_screen.dart';
import 'package:e_commerce/view/screens/wishlist_screen.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ionicons/ionicons.dart';

import '../view/screens/login_screen.dart';
import '../view/screens/register_screen.dart';

// Welcome Screen log in button widget
Widget loginButton(double w, double h, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    },
    child: Container(
      width: w,
      padding: EdgeInsets.symmetric(vertical: h * 0.02),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(h * 0.01)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color(0xffdf8e33).withAlpha(100),
                offset: Offset(2, 4),
                blurRadius: 8,
                spreadRadius: 2)
          ],
          color: Colors.white),
      child: Text(
        'Login',
        style: TextStyle(fontSize: h * 0.03, color: Colors.purple),
      ),
    ),
  );
}
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Welcome Screen sign up button widget

// Widget signUpButton(double w, double h, BuildContext context) {
//   return InkWell(
//     onTap: () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => SignUpScreen()));
//     },
//     child: Container(
//       width: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.symmetric(vertical: h * 0.02),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(h * 0.01)),
//         border: Border.all(color: Colors.white, width: w * 0.01),
//       ),
//       child: Text(
//         'Register now',
//         style: TextStyle(fontSize: h * 0.03, color: Colors.white),
//       ),
//     ),
//   );
// }

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Welcome Screen title widget
Widget title(double w, double h, Color firstColor, Color secondColor) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
        text: 'S',
        style:
            // GoogleFonts.portLligatSans(
            TextStyle(
          fontSize: h * 0.05,
          fontWeight: FontWeight.w700,
          color: secondColor,
        ),
        children: [
          TextSpan(
            text: 'tore',
            style: TextStyle(color: firstColor, fontSize: h * 0.05),
          ),
          TextSpan(
            text: 'name',
            style: TextStyle(color: secondColor, fontSize: h * 0.05),
          ),
        ]),
  );
}
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SignUp Screen back button widget

Widget backButton(double w, double h, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: h * 0.02),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0, top: h * 0.01, bottom: h * 0.01),
            child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
          ),
          Text('Back',
              style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.w500,
                  color: Colors.white))
        ],
      ),
    ),
  );
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Login Screen don't have account widget

// Widget registerWidget(double w, double h, BuildContext context) {
//   return InkWell(
//     onTap: () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => SignUpScreen()));
//     },
//     child: Container(
//       margin: EdgeInsets.symmetric(vertical: h * 0.02),
//       padding: EdgeInsets.all(w * 0.03),
//       alignment: Alignment.bottomCenter,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             'Don\'t have an account ?',
//             style: TextStyle(fontSize: h * 0.023, fontWeight: FontWeight.w600),
//           ),
//           SizedBox(
//             width: w * 0.02,
//           ),
//           Text(
//             'Register',
//             style: TextStyle(
//                 color: Colors.purple,
//                 fontSize: h * 0.022,
//                 fontWeight: FontWeight.w600),
//           ),
//         ],
//       ),
//     ),
//   );
// }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Login Screen don't have account widget

Widget loginWidget(double w, double h, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: h * 0.02),
      padding: EdgeInsets.all(w * 0.03),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Have an account ?',
            style: TextStyle(fontSize: h * 0.023, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: w * 0.02,
          ),
          Text(
            'Login',
            style: TextStyle(
                color: Colors.purple,
                fontSize: h * 0.022,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// SignUp Screen social account register widget

socialAccounts(
  double mWidth,
  double mHeight,
) {
  return Column(
    children: [
      Text(
        "Or ?",
        style: TextStyle(fontSize: mHeight * 0.025),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: mWidth * 0.08,
            height: mHeight * 0.05,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(mHeight * 0.5)),
            child: Icon(
              Ionicons.logo_google,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: mWidth * 0.1,
          ),
          Container(
            width: mWidth * 0.08,
            height: mHeight * 0.05,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(mHeight * 0.5)),
            child: Icon(
              Ionicons.logo_twitter,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: mWidth * 0.1,
          ),
          Container(
            width: mWidth * 0.08,
            height: mHeight * 0.05,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(mHeight * 0.5)),
            child: Icon(
              Icons.facebook_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(
        height: mHeight * 0.02,
      )
    ],
  );
}
// /---------------------------------------------------------------------------------------------------

FancyDrawer(FancyDrawerController controller) {
  return Material(
    child: FancyDrawerWrapper(
      backgroundColor: Colors.white,
      controller: controller,
      drawerItems: <Widget>[
        Text(
          "Go to home",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "About us",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Our products",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Support us",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Log out",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          title: Text(
            "Some appbar",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              // _controller.toggle();
            },
          ),
        ),
        body: Center(
          child: Text("Body"),
        ),
      ),
    ),
  );
}

GridContainer(double mWidth, double mHeight, bool gridBool, bool listBool) {
  if (gridBool) {
    return SizedBox(
      height: mHeight * 0.6,
      width: mWidth,
      child: GridView.custom(
        semanticChildCount: imagesUrls.length,
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
            childCount: imagesUrls.length, (context, index) {
          return Container(
            width: mWidth * 0.5,
            height: mHeight * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mHeight * 0.02),
              image: DecorationImage(
                  image: AssetImage(
                    imagesUrls[index],
                  ),
                  fit: BoxFit.fill),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: mHeight * 0.005,
                  left: mWidth * 0.005,
                  child: Container(
                    width: mWidth * 0.16,
                    height: mHeight * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mHeight * 0.5)),
                    child: Center(
                      child: Text(
                        "35 % OFF ",
                        style: TextStyle(
                            color: Colors.orange, fontSize: mHeight * 0.015),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: mHeight * 0.03,
                  right: mWidth * 0.02,
                  child: Container(
                    width: mWidth * 0.07,
                    height: mHeight * 0.04,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mHeight * 0.5)),
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.orange,
                        size: mHeight * 0.03,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: mHeight * 0.25,
                  left: mWidth * 0.08,
                  child: Container(
                    width: mWidth * 0.3,
                    height: mHeight * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Type of Brand",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: mHeight * 0.015),
                            ),
                          ),
                          Container(
                            width: mWidth * 0.1,
                            height: mHeight * 0.07,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(mHeight * 0.01),
                                  bottomRight: Radius.circular(mHeight * 0.01),
                                )),
                            child: Column(children: [
                              Icon(
                                Icons.shopping_basket,
                                color: Colors.white,
                                size: mHeight * 0.025,
                              ),
                              Text(
                                "\$ 15.99",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mHeight * 0.01),
                              )
                            ]),
                          )
                          // Container(
                          //   width: mWidth * 0.1,
                          //   height: mHeight * 0.1,
                          //   color: Colors.purple,
                          //   child: Column(
                          //     children: [
                          //       Icon(
                          //         Icons.shopping_basket,
                          //         color: Colors.white,
                          //         size: mHeight * 0.03,
                          //       ),
                          //       Text(
                          //         "\$ 15.99",
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: mHeight * 0.02),
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ]),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  } else {
    return ListView.builder(
        itemCount: imagesUrls.length,
        itemBuilder: ((context, index) {
          return Container(
            width: mWidth * 0.5,
            height: mHeight * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mHeight * 0.02),
              image: DecorationImage(
                  image: AssetImage(
                    imagesUrls[index],
                  ),
                  fit: BoxFit.fill),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: mHeight * 0.005,
                  left: mWidth * 0.005,
                  child: Container(
                    width: mWidth * 0.16,
                    height: mHeight * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mHeight * 0.5)),
                    child: Center(
                      child: Text(
                        "35 % OFF ",
                        style: TextStyle(
                            color: Colors.orange, fontSize: mHeight * 0.015),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: mHeight * 0.03,
                  right: mWidth * 0.02,
                  child: Container(
                    width: mWidth * 0.07,
                    height: mHeight * 0.04,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mHeight * 0.5)),
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.orange,
                        size: mHeight * 0.03,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: mHeight * 0.25,
                  left: mWidth * 0.08,
                  child: Container(
                    width: mWidth * 0.3,
                    height: mHeight * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mHeight * 0.01)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Type of Brand",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: mHeight * 0.015),
                            ),
                          ),
                          Container(
                            width: mWidth * 0.1,
                            height: mHeight * 0.07,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(mHeight * 0.01),
                                  bottomRight: Radius.circular(mHeight * 0.01),
                                )),
                            child: Column(children: [
                              Icon(
                                Icons.shopping_basket,
                                color: Colors.white,
                                size: mHeight * 0.025,
                              ),
                              Text(
                                "\$ 15.99",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mHeight * 0.01),
                              )
                            ]),
                          )
                          // Container(
                          //   width: mWidth * 0.1,
                          //   height: mHeight * 0.1,
                          //   color: Colors.purple,
                          //   child: Column(
                          //     children: [
                          //       Icon(
                          //         Icons.shopping_basket,
                          //         color: Colors.white,
                          //         size: mHeight * 0.03,
                          //       ),
                          //       Text(
                          //         "\$ 15.99",
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: mHeight * 0.02),
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ]),
                  ),
                )
              ],
            ),
          );
        }));
  }
}

// /--------------------------------------------------------------------------------------------------------

Widget appDrawer(double mWidth, double mHeight, BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: mWidth * 0.06,
          ),
          SizedBox(
            width: mWidth * 0.2,
            height: mHeight * 0.13,
            child: Image.network(
              'http://cdn.onlinewebfonts.com/svg/img_24787.png',
              color: Colors.orange,
            ),
          ),
        ],
      ),
      Center(
        child: SizedBox(
          // color: Colors.red,
          height: mHeight * 0.0595,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: mWidth * 0.02,
              ),
              Column(
                children: [
                  Text(
                    "Zeyad Mohamed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: mHeight * 0.03,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Zeyadm792@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: mHeight * 0.02,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: ImageIcon(
          AssetImage('assets/images/homeorange.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WishlistScreen()),
          );
        },
        leading: ImageIcon(
          AssetImage('assets/images/heartorange.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Wishlist",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.pushNamed(context, '/CartScreen');
        },
        leading: ImageIcon(
          AssetImage('assets/images/cartorange.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          //  Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyUi()),);
          Navigator.pushNamed(context, '/OrderScreen');
        },
        leading: ImageIcon(
          AssetImage('assets/images/orderhistory.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Order History",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        },
        leading: ImageIcon(
          AssetImage('assets/images/profile.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingController()),);
        },
        leading: ImageIcon(
          AssetImage('assets/images/settings.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "App Settings",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.question_answer, color: Colors.orange),
        title: Text(
          "Help & FAQs",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: ImageIcon(AssetImage('assets/images/logout.png'),
            color: Colors.orange),
        title: Text(
          "Logout",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  );
}

// --------------------------------------------------------------------------------------------------------
class MenuIcon extends StatelessWidget {
  double mHeight;
  BuildContext context;
  MenuIcon(this.mHeight, this.context, {Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ZoomDrawer.of(context)!.toggle();
        },
        icon: ImageIcon(
          AssetImage('assets/images/menu.png'),
          color: Colors.white,
          size: mHeight * 0.04,
        ));
  }
}

//not from me------------------------------------------------------------------------------------------------
Widget defaultTextFiled({
  required TextEditingController controlller,
  required String lable,
  bool isPassword = false,
  required validate,
  IconData? suffix,
  Function? onPressed,
}) =>
    TextFormField(
      controller: controlller,
      obscureText: isPassword,
      validator: validate,
      style: TextStyle(
        color: HexColor('#E99000'),
        // fontSize: 12.0,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        labelText: lable,
        // enabledBorder: InputBorder(
        //   borderSide: BorderSide(
        //     color: HexColor('#FEFEFE'),
        //   ),
        // ),
        contentPadding: const EdgeInsets.only(top: 1),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  onPressed!();
                },
                icon: Icon(
                  suffix,
                  color: HexColor('#9F94AB'),
                ),
              )
            : null,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

Widget defaultTextButton({
  required Function onPressed,
  required String text,
  Color textColor = Colors.white,
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 14.0,
}) =>
    TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );

void navigateTo(context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

void navigateAndFinish(context, Widget screen) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
    (Route<dynamic> route) => false,
  );
}

Widget buildCartItem(double mWidth, double mHeight) => Padding(
      padding: EdgeInsets.all(mHeight * 0.02),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 10,
            child: Container(
              width: mWidth,
              height: mHeight * 0.17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(mHeight * 0.01),
              ),
              child: Row(
                children: [
                  Container(
                    width: mWidth * 0.35,
                    height: mHeight * 0.2,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(mHeight * 0.01),
                            bottomLeft: Radius.circular(mHeight * 0.01))),
                  ),
                  SizedBox(
                    width: mWidth * 0.02,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Product name",
                        style: TextStyle(fontSize: mHeight * 0.02),
                      ),
                      Text(
                        "Brand",
                        style: TextStyle(fontSize: mHeight * 0.02),
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                              itemSize: mHeight * 0.02,
                              initialRating: 4.5,
                              itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              onRatingUpdate: (_) {}),
                          Text(
                            "+ 23",
                            style: TextStyle(fontSize: mHeight * 0.02),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: mWidth * 0.725,
            top: mHeight * 0.127,
            child: Container(
                width: mWidth * 0.2,
                height: mHeight * 0.05,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(mHeight * 0.01),
                        topLeft: Radius.circular(mHeight * 0.02))),
                child: Container(
                  width: mWidth * 0.2,
                  height: mHeight * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: AppColors.secondaryColor,
                                size: mHeight * 0.025,
                              ))),
                      Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: AppColors.secondaryColor,
                                size: mHeight * 0.025,
                              )))
                    ],
                  ),
                )),
          ),
          Positioned(
            bottom: mHeight * 0.13,
            left: mWidth * 0.84,
            child: SizedBox(
                width: mWidth * 0.15,
                child: Image.asset('assets/images/remove.png')),
          )
        ],
      ),
    );

Widget cartData(bool isOrder) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isOrder)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '#1365967',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                '10 Au 2020',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        if (isOrder)
          const SizedBox(
            height: 6.0,
          ),
        Text(
          'Women\'s Fall Winter Scarf',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text('American Trends'),
        const SizedBox(
          height: 6.0,
        ),
        Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 18.0,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 18.0,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 18.0,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 18.0,
            ),
            Icon(
              Icons.star_half,
              color: Colors.orange,
              size: 18.0,
            ),
            Text(
              ' +23',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    );

Widget buildOrderItem() => Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 5.0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        // alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            height: 125.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 12.0,
                  offset: Offset(-5, 5),
                ),
              ],
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              children: [
                Image(
                  image: AssetImage('images/kanike.jpg'),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                cartData(true),
              ],
            ),
          ),
          Container(
            height: 32.0,
            decoration: BoxDecoration(
              color: HexColor('#432267'),
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(15.0),
                bottomEnd: Radius.circular(15.0),
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.share,
                size: 20.0,
              ),
              onPressed: () {},
              color: HexColor('#E99000'),
            ),
          ),
        ],
      ),
    );
