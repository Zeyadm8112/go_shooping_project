import 'package:e_commerce/model/data/page_view_data.dart';
import 'package:e_commerce/utility/app_colors.dart';
import 'package:e_commerce/view/screens/welcome_screen.dart';
import 'package:e_commerce/view_model/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatelessWidget {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    var provider = Provider.of<OnBoardingViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(children: [
        PageView(
            controller: _controller,
            onPageChanged: (value) {
              provider.changeScreenIndex(value);
            },
            children: myData
                .map((item) => Container(
                      color: AppColors.primaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              SizedBox(
                                  width: mWidth * 0.8,
                                  height: mHeight * 0.3,
                                  child: Image.asset(item.imageurl)),
                              SizedBox(
                                height: mHeight * 0.15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: mWidth * 0.6,
                                  height: mHeight * 0.2,
                                  child: Text(
                                    item.title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: mHeight * 0.02),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ]),
                          ),
                          SizedBox(height: mHeight * 0.01),
                        ],
                      ),
                    ))
                .toList()),
        provider.currentIndex == 2
            ? Positioned(
                top: mHeight * 0.8,
                left: mWidth * 0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/LoginScreen');
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.white, fontSize: mHeight * 0.024),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.1,
                    ),
                    Container(
                      color: AppColors.secondaryColor,
                      width: mWidth * 0.005,
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
                            color: Colors.white, fontSize: mHeight * 0.024),
                      ),
                    )
                  ],
                ),
              )
            : Positioned(
                top: mHeight * 0.8,
                left: mWidth * 0.22,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        _controller.previousPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut);
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white, fontSize: mHeight * 0.024),
                      ),
                    ),
                    SizedBox(width: mWidth * 0.1),
                    Container(
                      color: Colors.white,
                      width: mWidth * 0.005,
                      height: mHeight * 0.03,
                    ),
                    SizedBox(width: mWidth * 0.1),
                    TextButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut);
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.orange, fontSize: mHeight * 0.024),
                      ),
                    )
                  ],
                ),
              ),
        Positioned(
          top: mHeight * 0.9,
          left: mWidth * 0.02,
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
                spacing: 4,
                expansionFactor: 2,
                dotWidth: mWidth * 0.04,
                activeDotColor: Colors.orange,
                dotColor: Colors.white),
          ),
        ),
        provider.currentIndex != 0
            ? Positioned(
                top: mHeight * 0.05,
                right: mWidth * 0.01,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginScreen');
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.orange, fontSize: mHeight * 0.03),
                  ),
                ),
              )
            : Container(),
      ]),
    );
  }

  buttonsRow(double mWidth, double mHeight, int? currentIndex) {
    int? index;
    currentIndex == null ? index = 0 : index == currentIndex;
    if (index == 2) {
      return Positioned(
        top: mHeight * 0.8,
        left: mWidth * 0.33,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _controller.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              child: Text(
                "Log in",
                style:
                    TextStyle(color: Colors.white, fontSize: mHeight * 0.024),
              ),
            ),
            Container(
              color: Colors.white,
              width: mWidth * 0.005,
              height: mHeight * 0.03,
            ),
            TextButton(
              onPressed: () {
                _controller.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              child: Text(
                "Sign Up",
                style:
                    TextStyle(color: Colors.orange, fontSize: mHeight * 0.024),
              ),
            )
          ],
        ),
      );
    } else {
      return Positioned(
        top: mHeight * 0.8,
        left: mWidth * 0.33,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _controller.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              child: Text(
                "Back",
                style:
                    TextStyle(color: Colors.white, fontSize: mHeight * 0.024),
              ),
            ),
            Container(
              color: Colors.white,
              width: mWidth * 0.005,
              height: mHeight * 0.03,
            ),
            TextButton(
              onPressed: () {
                _controller.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              child: Text(
                "Next",
                style:
                    TextStyle(color: Colors.orange, fontSize: mHeight * 0.024),
              ),
            )
          ],
        ),
      );
    }
  }
}
