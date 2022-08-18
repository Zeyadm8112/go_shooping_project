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
        imageurl: "assets/images/shirts.jpg",
        ),
    CatogaryData(
        title:
            "Women",

        imageurl: "assets/images/bags.jpg",
        ),
    CatogaryData(
        title:
            "Accessoiry",
        imageurl: "assets/images/shoes1.jpg",
        ),
            CatogaryData(
        title:
            "Babies ",
        imageurl: "assets/images/pants.jpg",
        ),
                    CatogaryData(
        title:
            "Babies ",
        imageurl: "assets/images/skirts.jpg",
        )

,
    CatogaryData(
        title:
            "Home Office",
        imageurl: "assets/images/shorts.jpg",
        )
,
    CatogaryData(
        title:
            "Shoes",
        imageurl: "assets/images/scarfs.jpg",
        )

  ];