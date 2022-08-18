import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/view/screens/home_screen.dart';
import 'package:e_commerce/view/screens/login_screen.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:e_commerce/view_model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import '../../utility/app_colors.dart';
import 'main_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userPhoneNumberController =
      TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userConfirmPasswordController =
      TextEditingController();
  bool mVissibleConfirm = true;

  bool mVissible = true;
  IconData vissIcon = Icons.visibility;
  IconData vissIconConfirm = Icons.visibility;

  String userName = "";

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    final provider = Provider.of<RegisterViewModel>(context);
//  bool validateEmail(String value) {
//    Pattern pattern =
//        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
// //   RegExp regex = new RegExp(pattern);
// //   return (!regex.hasMatch(value)) ? false : true;
// }
    if (provider.state == RegisterScreenState.loading) {
      return const SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.primaryColor,
            body: Center(
              child: CircularProgressIndicator(color: AppColors.secondaryColor),
            )),
      );
    } else if (provider.state == RegisterScreenState.failed) {
      AnimatedSnackBar.material(provider.errorMessage,
              type: AnimatedSnackBarType.warning,
              mobileSnackBarPosition: MobileSnackBarPosition.bottom,
              duration: const Duration(seconds: 6))
          .show(context);
      provider.state = RegisterScreenState.loaded;
    }

    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: mHeight * .01),
                SizedBox(
                  // color: Colors.white,
                  height: mHeight * 0.25,
                  width: mWidth * 0.25,
                  child: FittedBox(
                    child: Image.asset(
                      'assets/images/applogo1.png',
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: mWidth * 0.02),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: mHeight * 0.01,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: AppColors.secondaryColor,

                            style: TextStyle(color: AppColors.secondaryColor),

                            // initialValue: "z",
                            controller: _userNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your name";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: "User name",
                              suffixIcon: Icon(Icons.person_outlined,
                                  color: Colors.white),

                              // border: lineInputBorder()
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mHeight * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.all(mWidth * 0.02),
                          child: TextFormField(
                            cursorColor: AppColors.secondaryColor,
                            style: TextStyle(color: AppColors.secondaryColor),
                            controller: _userEmailController,
                            validator: (value) {
                              // var email = "fredrik@gmail.com";

                              // if (value!.isEmpty) {
                              //   return "Enter your account ";
                              // }
                              // if ((EmailValidator.validate(value) == true)) {
                              // } else {
                              //   return null;
                              // }
                            },
                            decoration: const InputDecoration(
                                labelText: "Account",
                                suffixIcon: Icon(Ionicons.logo_google,
                                    color: Colors.white),
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
                          height: mHeight * 0.03,
                        ),

                        Padding(
                          padding: EdgeInsets.all(mWidth * 0.02),
                          child: TextFormField(
                            cursorColor: AppColors.secondaryColor,
                            style: TextStyle(color: AppColors.secondaryColor),
                            controller: _userPhoneNumberController,
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^(?:[+0]9)?[0-9]{11}$')
                                      .hasMatch(value)) {
                                return "Enter valid number";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                labelText: "Phone number",
                                suffixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
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
                          height: mHeight * 0.03,
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
                                labelText: "Password",
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      vissIcon,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        mVissible
                                            ? vissIcon =
                                                Icons.visibility_off_sharp
                                            : vissIcon = Icons.visibility;

                                        mVissible = !mVissible;
                                      });
                                    }),
                                labelStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white))

                                // border: OutlineInputBorder()
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: AppColors.secondaryColor,
                            style: TextStyle(color: AppColors.secondaryColor),
                            obscureText: mVissibleConfirm,
                            controller: _userConfirmPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Confirm your password";
                              }
                              if (value != _userPasswordController.text) {
                                return "The passowrds aren't matched  ";
                              }
                            },
                            decoration: InputDecoration(
                                labelText: "Confirm Password",
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      vissIconConfirm,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        mVissible
                                            ? vissIconConfirm =
                                                Icons.visibility_off_sharp
                                            : vissIconConfirm =
                                                Icons.visibility;
                                        mVissibleConfirm = !mVissibleConfirm;
                                      });
                                    }),
                                labelStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white))

                                // border: OutlineInputBorder()
                                ),
                          ),
                        ),
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

                        SizedBox(
                          height: mHeight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/LoginScreen');
                              },
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.8),
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
                                if (formKey.currentState!.validate()) {
                                  String _userName = _userNameController.text;
                                  String _userEmail = _userEmailController.text;
                                  String _userPhoneNumber =
                                      _userPhoneNumberController.text;
                                  String _userPassword =
                                      _userPasswordController.text;
                                  String _userConfirmPassword =
                                      _userConfirmPasswordController.text;
                                  provider.registerUser(
                                      _userName,
                                      _userPhoneNumber,
                                      _userEmail,
                                      _userPassword,
                                      _userConfirmPassword,
                                      context);
                                  sharedPref!.setString('name', _userName);
                                  sharedPref!.setString('roleName', 'User');
                                  userName = _userName;
                                } else {}
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontSize: mHeight * 0.024),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: mWidth * 0.1,
                        ),

                        // _divider(),
                        // _facebookButton(),
                        // SizedBox(height: mHeight * .055),
                        // _createAccountLabel(mWidth, mHeight),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
