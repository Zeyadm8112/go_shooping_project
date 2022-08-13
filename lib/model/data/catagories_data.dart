import 'package:flutter/material.dart';

class CatogaryData {
  final String title;
  final String imageurl;

  CatogaryData(
      {
      required this.title,
      required this.imageurl,
      });
}



  final List<CatogaryData> myCatogaryData = [
    CatogaryData(
        title:
            "Fashion",
        imageurl: "assets/images/fashion.jpg",
        ),
    CatogaryData(
        title:
            "Women",

        imageurl: "assets/images/fashion2.jpg",
        ),
    CatogaryData(
        title:
            "Accessoiry",
        imageurl: "assets/images/acces.jpg",
        ),
            CatogaryData(
        title:
            "Babies ",
        imageurl: "assets/images/baby.jpg",
        )
,
    CatogaryData(
        title:
            "Home Office",
        imageurl: "assets/images/home_fashion.jpg",
        )
,
    CatogaryData(
        title:
            "Shoes",
        imageurl: "assets/images/shoes.jpg",
        )

  ];