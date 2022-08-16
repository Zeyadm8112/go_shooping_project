import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/utility/app_colors.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ionicons/ionicons.dart';

import '../../model/data/catagories_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    {

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
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
                          MenuIcon(mHeight,context),
                          Text("Home",
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
                              borderRadius:
                                  BorderRadius.circular(mHeight * 0.3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search_outlined,color:Colors.grey),
                            ),
                            SizedBox(
                              width: mWidth * 0.5,
                              height: mHeight * 0.05,
                              child: const TextField(
                                // textAlign: TextAlign.end,
                                // textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  label: Text('search'),
                                  labelStyle: TextStyle(color:Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:ImageIcon(AssetImage('assets/images/filter.png'),color:Colors.grey),
                            ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: mHeight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.all(mHeight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Category",
                              style: TextStyle(fontSize: mHeight * 0.03)),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all (${myCatogaryData.length})",
                                style: TextStyle(
                                    fontSize: mHeight * 0.025,
                                    color: Colors.grey),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: mHeight * 0.18,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: myCatogaryData.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  width: mWidth * 0.3,
                                  height: mHeight * 0.18,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(mHeight * 0.04),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              myCatogaryData[index].imageurl),
                                          fit: BoxFit.cover)),
                                  child: Center(
                                      child: Text(
                                    myCatogaryData[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: mHeight * 0.03,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              );
                            })),
                      ),
                      SizedBox(
                        height: mHeight * 0.01,
                      ),
                      CarouselSlider.builder(
                        itemCount: mySalesData.length,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: mHeight * 0.25,
                          autoPlay: true,
                          reverse: true,
                        ),
                        itemBuilder: ((context, index, realIndex) {
                          return Container(
                            width: mWidth,
                            height: mHeight * 0.25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(mySalesData[index]),
                                    fit: BoxFit.fill)),
                          );
                        }),
                      ),
                      SizedBox(
                        height: mHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Popular",
                              style: TextStyle(fontSize: mHeight * 0.03)),
                        ],
                      ),
                      SizedBox(
                        height: mHeight * 0.5,
                        width: mWidth,
                        child: GridView.builder(
                            itemCount: imagesUrls.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 25,
                              crossAxisSpacing: 8,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                width: mWidth * 0.5,
                                height: mHeight * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(mHeight * 0.02),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        imagesUrls[index],
                                      ),
                                      fit: BoxFit.fill),
                                ),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      top: mHeight * 0.005,
                                      left: mWidth * 0.005,
                                      child: Container(
                                        width: mWidth * 0.16,
                                        height: mHeight * 0.03,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.5)),
                                        child: Center(
                                          child: Text(
                                            "35 % OFF ",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: mHeight * 0.015),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: mHeight * 0.02,
                                      right: mWidth * 0.02,
                                      child: Container(
                                        width: mWidth * 0.07,
                                        height: mHeight * 0.04,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.5)),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: Colors.purple,
                                            size: mHeight * 0.03,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: mHeight * 0.25,
                                      left: mWidth * 0.03,
                                      child: Container(
                                        width: mWidth * 0.4,
                                        height: mHeight * 0.06,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.01)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                
                                            children: [
                                              Container(),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Type of Brand",
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .primaryColor,
                                                        fontSize:
                                                            mHeight * 0.014),
                                                  ),
                                                  Text(
                                                    "Brand",
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .primaryColor,
                                                        fontSize:
                                                            mHeight * 0.013),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: mWidth * 0.1,
                                                height: mHeight * 0.07,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColors.primaryColor,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight: Radius.circular(
                                                          mHeight * 0.01),
                                                      bottomRight:
                                                          Radius.circular(
                                                              mHeight * 0.01),
                                                    )),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      ImageIcon(
                                                        AssetImage(
                                                            'assets/images/cart.png'),
                                                        color: Colors.white,
                                                        size: mHeight * 0.022,
                                                      ),
                                                      Text(
                                                        "\$ 15.99",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: mHeight *
                                                                0.012),
                                                      )
                                                    ]),
                                              )
                                              // Container(
                                              //   width: mWidth * 0.1,
                                              //   height: mHeight * 0.1,
                                              //   color: Colors.purple,
                                              //   child: Column(
                                              //     children: [
                                              //       Icon(
                                              //         Icons.shopping_basket,
                                              //         color: Colors.white,
                                              //         size: mHeight * 0.03,
                                              //       ),
                                              //       Text(
                                              //         "\$ 15.99",
                                              //         style: TextStyle(
                                              //             color: Colors.white,
                                              //             fontSize: mHeight * 0.02),
                                              //       ),
                                              //     ],
                                              //   ),
                                              // )
                                            ]),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    
  }

  final List<String> mySalesData = [
    'assets/images/sale1.jpg',
    'assets/images/sale2.jpg',
    'assets/images/sale3.jpg'
  ];
  final List<String> imagesUrls = [
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/16.jpg',
    'assets/images/6.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/14.jpg',
    'assets/images/15.jpg',
  ];
}
