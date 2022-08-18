import 'package:e_commerce/utility/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../model/data/image_data.dart';
import '../../utility/app_colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: ZoomDrawer(
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        drawerShadowsBackgroundColor: Colors.grey[300]!,
        slideWidth: mWidth * 0.65,
        menuBackgroundColor: AppColors.primaryColor,
        menuScreen: appDrawer(mWidth, mHeight, context),
        mainScreen: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: mWidth,
                    height: mHeight * 0.15,
                    color: AppColors.primaryColor,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MenuIcon(mHeight, context),
                        Text("Order History",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: mHeight * 0.03,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/CartScreen');
                            },
                            icon: ImageIcon(
                              AssetImage('assets/images/cart.png'),
                              color: Colors.white,
                              size: mHeight * 0.04,
                            ))
                      ]),
                  Positioned(
                    top: mHeight * 0.105,
                    left: mWidth * 0.13,
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(mHeight * 0.3),
                      child: Container(
                        width: mWidth * 0.77,
                        height: mHeight * 0.075,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.black)],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(mHeight * 0.3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search_outlined,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: mWidth * 0.5,
                              height: mHeight * 0.05,
                              child: const TextField(
                                // textAlign: TextAlign.end,
                                // textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  label: Text('search'),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                  AssetImage('assets/images/filter.png'),
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: mHeight * 0.03,
              ),
              SizedBox(
                height: mHeight * 0.8,
                width: mWidth * 0.9,
                child: ListView.builder(
                    itemCount: imagesUrls.length,
                    itemBuilder: ((context, index) => Padding(
                          padding: EdgeInsets.only(top: mHeight * 0.02),
                          child: Card(
                            child: Stack(
                              children: [
                                Container(
                                  width: mWidth * 0.8,
                                  height: mHeight * 0.17,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(mHeight * 0.01),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: mWidth * 0.35,
                                        height: mHeight * 0.2,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    mHeight * 0.01),
                                                bottomLeft: Radius.circular(
                                                    mHeight * 0.01))),
                                        child: Image.asset(
                                          imagesUrls[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        width: mWidth * 0.02,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "#1365969",
                                                style: TextStyle(
                                                    fontSize: mHeight * 0.02,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                width: mWidth * 0.02,
                                              ),
                                              Text(
                                                "10 Aug 2020",
                                                style: TextStyle(
                                                    fontSize: mHeight * 0.02,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Product name",
                                            style: TextStyle(
                                                fontSize: mHeight * 0.02),
                                          ),
                                          Text(
                                            "Brand",
                                            style: TextStyle(
                                                fontSize: mHeight * 0.02),
                                          ),
                                          Row(
                                            children: [
                                              RatingBar.builder(
                                                  itemSize: mHeight * 0.02,
                                                  initialRating: 4.5,
                                                  itemBuilder:
                                                      (context, index) => Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                  onRatingUpdate: (_) {}),
                                              Text(
                                                "+ 23",
                                                style: TextStyle(
                                                    fontSize: mHeight * 0.02),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: mWidth * 0.08,
                                    height: mHeight * 0.05,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.only(
                                            bottomRight:
                                                Radius.circular(mHeight * 0.01),
                                            topLeft: Radius.circular(
                                                mHeight * 0.02))),
                                    child:Icon(
Icons.share,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))),
              )
            ],
          ),
        )),
      ),
    );
  }
}
