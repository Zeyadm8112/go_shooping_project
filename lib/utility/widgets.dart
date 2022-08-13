import 'package:e_commerce/data/image_data.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ionicons/ionicons.dart';

import '../screens/login_screen.dart';
import '../screens/sign_up_screen.dart';

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

Widget signUpButton(double w, double h, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: h * 0.02),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(h * 0.01)),
        border: Border.all(color: Colors.white, width: w * 0.01),
      ),
      child: Text(
        'Register now',
        style: TextStyle(fontSize: h * 0.03, color: Colors.white),
      ),
    ),
  );
}

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

Widget registerWidget(double w, double h, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: h * 0.02),
      padding: EdgeInsets.all(w * 0.03),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: h * 0.023, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: w * 0.02,
          ),
          Text(
            'Register',
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
  if(gridBool){
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
  }else{
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
