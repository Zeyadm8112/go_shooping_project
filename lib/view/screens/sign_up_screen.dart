import 'package:e_commerce/screens/login_screen.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'main_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userPhoneNumberController =
      TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userConfirmPasswordController =
      TextEditingController();
  bool mVissible = true;
  Widget vissIcon = Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
//  bool validateEmail(String value) {
//    Pattern pattern =
//        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
// //   RegExp regex = new RegExp(pattern);
// //   return (!regex.hasMatch(value)) ? false : true;
// }

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: mHeight * .01),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios,color: Colors.purple,))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: mWidth * 0.02),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: mHeight * .02),
                    title(mWidth, mHeight, Colors.purple, Colors.orange),
                    SizedBox(height: mHeight * 0.02),

                    SizedBox(
                      height: mHeight * 0.03,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // initialValue: "z",
                        controller: _userNameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter your name";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "User name",
                          suffixIcon: Icon(Icons.person_outlined,color:Colors.purple),

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
                        decoration: InputDecoration(
                          labelText: "Account",
                          suffixIcon: Icon(Ionicons.logo_google,color:Colors.orange),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * 0.03,
                    ),

                    Padding(
                      padding: EdgeInsets.all(mWidth * 0.02),
                      child: TextFormField(
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
                        decoration: InputDecoration(
                          labelText: "Phone number",
                          suffixIcon: Icon(
                            Icons.phone,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
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
                              icon: vissIcon,
                              onPressed: () {
                                setState(() {
                                  mVissible
                                      ? vissIcon =
                                          Icon(Icons.visibility_off_sharp,color: Colors.orange,)
                                      : vissIcon = Icon(Icons.visibility,color:Colors.purple);
                                  mVissible = !mVissible;
                                });
                              }),
                          // border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * 0.03,
                    ),

                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          // _showMyDialog();
                          // Navigator.pushReplacement(context, RoutePageBuilder(context)=>))
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        } else {}
                        //Auth Logic Here!!!!
                      },
                      child: Container(
                        width: mWidth,
                        padding: EdgeInsets.symmetric(vertical: mHeight * 0.02),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(mHeight * 0.01)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.purple.withAlpha(100),
                                offset: Offset(2, 4),
                                blurRadius: 8,
                                spreadRadius: 2)
                          ],
                          color: Colors.purple,
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: mHeight * 0.03, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: mHeight * 0.02),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Forgot Password ?',
                            style: TextStyle(
                                color: Colors.orange.withOpacity(0.7),
                                fontSize: mHeight * 0.025,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    // _divider(),
                    // _facebookButton(),
                    // SizedBox(height: mHeight * .055),
                    // _createAccountLabel(mWidth, mHeight),
                    socialAccounts(mWidth, mHeight),
                    loginWidget(mWidth, mHeight, context)
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
