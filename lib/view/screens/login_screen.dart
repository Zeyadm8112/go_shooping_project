import 'package:e_commerce/utility/app_colors.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool mVissible = true;
  Widget vissIcon = Icon(Icons.visibility);
  final formKey = GlobalKey<FormState>();
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _userPasswordController = new TextEditingController();

  String _userName = "";
  String _userPassword = "";

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: mHeight * .01),
                SizedBox(
                  // color: Colors.white,
                  height: mHeight * 0.4,
                  width: mWidth * 0.4,
                  child: FittedBox(
                    child: Image.asset(
                      'assets/images/applogo1.png',
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  // color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: mWidth * 0.02),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: AppColors.secondaryColor,

                            style: TextStyle(color: AppColors.secondaryColor),
                            // initialValue: "z",
                            controller: _userNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter you user name";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                labelText: "User name",
                                labelStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        ),
                        SizedBox(
                          height: mHeight * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: AppColors.secondaryColor,
                            style: TextStyle(color: AppColors.secondaryColor),
                            obscureText: mVissible,
                            controller: _userPasswordController,
                            validator: (value) {
                              if (value!.length < 6) {
                                return "The password should be more than 6 digits";
                              }
                            },
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(color: Colors.white),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  icon: vissIcon,
                                  color: Colors.grey,
                                  onPressed: () {
                                    setState(() {
                                      mVissible
                                          ? vissIcon = const Icon(
                                              Icons.visibility_off_sharp)
                                          : vissIcon =
                                              const Icon(Icons.visibility);
                                      mVissible = !mVissible;
                                    });
                                  }),
                              // border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        // SizedBox(height: mHeight * 0.02),
                        // InkWell(
                        //   onTap: () {
                        //     if (formKey.currentState!.validate()) {
                        //     } else {
                        //       Navigator.pushReplacement(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => MainScreen()));
                        //     }
                        //   },
                        //   child: Container(
                        //     width: mWidth,
                        //     padding:
                        //         EdgeInsets.symmetric(vertical: mHeight * 0.02),
                        //     alignment: Alignment.center,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.all(
                        //             Radius.circular(mHeight * 0.01)),
                        //         boxShadow: <BoxShadow>[
                        //           BoxShadow(
                        //               color: Colors.purple.withAlpha(100),
                        //               offset: Offset(2, 4),
                        //               blurRadius: 8,
                        //               spreadRadius: 2)
                        //         ],
                        //         color: Colors.purple),
                        //     child: Text(
                        //       'Login',
                        //       style: TextStyle(
                        //           fontSize: mHeight * 0.03,
                        //           color: Colors.white),
                        //     ),
                        //   ),
                        // ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password ?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: mHeight * 0.025,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        // _divider(),
                        // _facebookButton(),
                        // SizedBox(height: mHeight * .055),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                        } else {
                          Navigator.pushReplacementNamed(
                              context, '/MainScreen');
                        }
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: mHeight * 0.024),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.1,
                    ),
                    Container(
                      color: Colors.white.withOpacity(.8),
                      width: mWidth * 0.01,
                      height: mHeight * 0.03,
                    ),
                    SizedBox(
                      width: mWidth * 0.1,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/RegisterScreen');
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: mHeight * 0.024),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
