import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/data/catagories_data.dart';
import 'package:e_commerce/data/page_view_data.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    int active;
    return Material(
        child: FancyDrawerWrapper(
      drawerItems: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: mWidth * 0.06,
            ),
            SizedBox(
              width: mWidth * 0.2,
              height: mHeight * 0.13,
              child: Image.network(
                'http://cdn.onlinewebfonts.com/svg/img_24787.png',
                color: Colors.orange,
              ),
            ),
          ],
        ),
        SizedBox(
         height:mHeight* 0.0595,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Zeyad Mohamed",
                style: TextStyle(
                  fontSize: mHeight * 0.03,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Zeyadm792@gmail.com",
                style: TextStyle(
                  fontSize: mHeight * 0.02 ,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.home,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Home",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.favorite,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Wishlist",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Ionicons.cart,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Cart",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.history,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Order History",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Ionicons.person,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Profile",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
                Row(
          children: [
            Icon(Icons.settings,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "App Settings",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
                Row(
          children: [
            Icon(Icons.question_answer,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Help & FAQs",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
                Row(
          children: [
            Icon(Icons.logout,color:Colors.orange),
            SizedBox(width: mWidth * 0.02,),
            Text(
              "Logout",
              style: TextStyle(
                fontSize: mHeight * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),



      ],
      controller: _controller,
      backgroundColor: Colors.purple,
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
                    color: Colors.purple,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              _controller.toggle();
                            },
                            icon: Icon(
                              Ionicons.menu_outline,
                              color: Colors.white,
                              size: mHeight * 0.04,
                            )),
                        Text("Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: mHeight * 0.03,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_basket,
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
                              icon: Icon(Icons.search_outlined),
                            ),
                            SizedBox(
                              width: mWidth * 0.5,
                              height: mHeight * 0.05,
                              child: const TextField(
                                // textAlign: TextAlign.end,
                                // textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  label: Text('search'),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sort_rounded),
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
                        height: mHeight * 0.6,
                        width: mWidth,
                        child: GridView.custom(
                          semanticChildCount: imagesUrls.length,
                          gridDelegate: SliverWovenGridDelegate.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            pattern: [
                              WovenGridTile(1),
                              WovenGridTile(
                                5 / 7,
                                crossAxisRatio: 0.9,
                                alignment: AlignmentDirectional.centerEnd,
                              ),
                            ],
                          ),
                          childrenDelegate: SliverChildBuilderDelegate(
                              childCount: imagesUrls.length, (context, index) {
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
                                    top: mHeight * 0.03,
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
                                    left: mWidth * 0.08,
                                    child: Container(
                                      width: mWidth * 0.3,
                                      height: mHeight * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              mHeight * 0.01)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Text(
                                                "Type of Brand",
                                                style: TextStyle(
                                                    color: Colors.purple,
                                                    fontSize: mHeight * 0.015),
                                              ),
                                            ),
                                            Container(
                                              width: mWidth * 0.1,
                                              height: mHeight * 0.07,
                                              decoration: BoxDecoration(
                                                  color: Colors.purple,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight: Radius.circular(
                                                        mHeight * 0.01),
                                                    bottomRight:
                                                        Radius.circular(
                                                            mHeight * 0.01),
                                                  )),
                                              child: Column(children: [
                                                Icon(
                                                  Icons.shopping_basket,
                                                  color: Colors.white,
                                                  size: mHeight * 0.025,
                                                ),
                                                Text(
                                                  "\$ 15.99",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: mHeight * 0.01),
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
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
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
