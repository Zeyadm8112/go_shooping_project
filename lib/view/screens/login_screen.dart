import 'package:e_commerce/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../utility/widgets.dart';
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
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: mHeight * .01),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.purple,
                    ))
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
                    SizedBox(height: mHeight * .1),
                    title(mWidth, mHeight, Colors.orange, Colors.purple),
                    SizedBox(height: mHeight * 0.017),
                    // _emailPasswordWidget(),
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
                            return "Enter you user name";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "User name",
                          suffixIcon: Icon(Icons.person_outlined),

                          // border: lineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * 0.02,
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
                                          Icon(Icons.visibility_off_sharp)
                                      : vissIcon = Icon(Icons.visibility);
                                  mVissible = !mVissible;
                                });
                              }),
                          // border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(height: mHeight * 0.02),
                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        }
                      },
                      child: Container(
                        width: mWidth,
                        padding: EdgeInsets.symmetric(vertical: mHeight * 0.02),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(mHeight * 0.01)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.purple.withAlpha(100),
                                  offset: Offset(2, 4),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ],
                            color: Colors.purple),
                        child: Text(
                          'Login',
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
                                color: Colors.grey,
                                fontSize: mHeight * 0.025,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    // _divider(),
                    // _facebookButton(),
                    // SizedBox(height: mHeight * .055),
                    registerWidget(mWidth, mHeight, context),
                  ],
                ),
              ),
            ),
            Positioned(
                top: mHeight * 0.03,
                left: 0,
                child: backButton(mWidth, mHeight, context)),
          ],
        ),
      )),
    );
  }
}
