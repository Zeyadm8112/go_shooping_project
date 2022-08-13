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
            "We strive to have a positive impact on customers ,employees ,the econome  and communities.",
        imageurl: "assets/images/anim1.json",
        ),
    Data(
        title:
            "We promote the fact that we offer free shipping for all orders.",

        imageurl: "assets/images/anim2.json",
        ),
    Data(
        title:
            "Be sure to log in to be able to book newly added offers.",
        imageurl: "assets/images/anim3.json",
        )
  ];