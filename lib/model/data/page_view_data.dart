import 'package:flutter/material.dart';

class Data {
  final String title;
  final String imageurl;

  Data(
      {
      required this.title,
      required this.imageurl,
      });
}



  final List<Data> myData = [
    Data(
        title:
            "We strive to have a positive impact on customers, employees, the economy and communities.",
        imageurl: "assets/images/onboarding1.png",
        ),
    Data(
        title:
            "\"We promote the fact that we offer free shipping for all orders.",

        imageurl: "assets/images/onboarding2.png",
        ),
    Data(
        title:
            "Be sure to log in to be able to book newly added offers.",
        imageurl: "assets/images/onboarding3.png",
        )
  ];