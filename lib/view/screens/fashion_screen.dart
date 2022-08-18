import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:e_commerce/view/widgets/shirts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';

import '../../model/data/catagories_data.dart';
import '../../model/data/image_data.dart';
import '../../utility/app_colors.dart';
import '../../view_model/home_view_model.dart';

class FashionScreen extends StatefulWidget {
  const FashionScreen({Key? key}) : super(key: key);

  @override
  State<FashionScreen> createState() => _FashionScreenState();
}

class _FashionScreenState extends State<FashionScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);

    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    final provider = Provider.of<HomeViewModel>(context);
    if (provider.state == HomeScreenState.loading) {
      return const SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.primaryColor,
            body: Center(
              child: CircularProgressIndicator(color: AppColors.secondaryColor),
            )),
      );
    } else if (provider.state == HomeScreenState.failed) {
      AnimatedSnackBar.material(provider.errorMessage,
              type: AnimatedSnackBarType.error,
              mobileSnackBarPosition: MobileSnackBarPosition.bottom,
              duration: const Duration(seconds: 3))
          .show(context);
      provider.state = HomeScreenState.loaded;
    }

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
                        MenuIcon(mHeight, context),
                        Text("Fashion",
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
                              "See all (${provider.categories?.length ?? 0})",
                              style: TextStyle(
                                  fontSize: mHeight * 0.025,
                                  color: Colors.grey),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: mHeight * 0.18,
                      child: FutureBuilder(
                        future: provider.getCategories(),
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return const Center(
                                child: CircularProgressIndicator(
                                    color: AppColors.primaryColor),
                              );

                            case ConnectionState.done:

                            default:
                              if (snapshot.hasError) {
                                return Center(
                                  child: Text("error"),
                                );
                              } else if (snapshot.hasData) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: provider.categories!.length,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width: mWidth * 0.3,
                                        height: mHeight * 0.18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.04),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    myCatogaryData[index]
                                                        .imageurl),
                                                fit: BoxFit.cover)),
                                        child: Center(
                                            child: Text(
                                          provider.categories![index].category,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: mHeight * 0.03,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    );
                                  }),
                                );
                              } else {
                                return Text("noData");
                              }
                          }
                        },
                      ),
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
                        Text("Fashion",
                            style: TextStyle(fontSize: mHeight * 0.03)),
                      ],
                    ),
                    SizedBox(
                        height: mHeight * 0.05,
                        width: mWidth * 2,
                        child: TabBar(
                          isScrollable: true,
                          labelColor: AppColors.primaryColor,
                          unselectedLabelColor:
                              AppColors.primaryColor.withOpacity(0.4),
                          controller: tabController,
                          tabs:  [
                            Tab(
                              text: "Shirts(${provider.shirts.length})",
                            ),
                            Tab(
                              text: "Pants(${provider.pants.length})",
                            ),
                            Tab(
                              text: "Skirts(${provider.skirt.length})",
                            ),
                            Tab(
                              text: "Shorts(${provider.shorts.length})",
                            ),
                            Tab(
                              text: "Scarfs(${provider.skarfs.length})",
                            ),
                          ],
                        )),
                    SizedBox(
                                              height: mHeight * 0.6,
                        width: mWidth ,

                      child: TabBarView(controller: tabController, children: [
                        SizedBox(
                          height: mHeight * 0.7,
                          width: mWidth,
                          child: FutureBuilder(
                              future: provider.showShirts(),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return const Center(
                                      child: CircularProgressIndicator(
                                          color: AppColors.primaryColor),
                                    );

                                  case ConnectionState.done:

                                  default:
                                    if (snapshot.hasError) {
                                      return Center(
                                        child: Text("error"),
                                      );
                                    } else if (snapshot.hasData) {
                                      return showTab(mWidth, mHeight, context,
                                          provider.shirts);
                                    } else {
                                      return Text("noData");
                                    }
                                }
                              }),
                        ),
                        SizedBox(
                          height: mHeight * 0.5,
                          width: mWidth,
                          child: FutureBuilder(
                              future: provider.showPants(),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return const Center(
                                      child: CircularProgressIndicator(
                                          color: AppColors.primaryColor),
                                    );

                                  case ConnectionState.done:

                                  default:
                                    if (snapshot.hasError) {
                                      return Center(
                                        child: Text("error"),
                                      );
                                    } else if (snapshot.hasData) {
                                      return showTab(mWidth, mHeight, context,
                                          provider.pants);
                                    } else {
                                      return Text("noData");
                                    }
                                }
                              }),
                        ),
                        SizedBox(
                          height: mHeight * 0.5,
                          width: mWidth,
                          child: FutureBuilder(
                              future: provider.showSkirts(),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return const Center(
                                      child: CircularProgressIndicator(
                                          color: AppColors.primaryColor),
                                    );

                                  case ConnectionState.done:

                                  default:
                                    if (snapshot.hasError) {
                                      return Center(
                                        child: Text("error"),
                                      );
                                    } else if (snapshot.hasData) {
                                      return showTab(mWidth, mHeight, context,
                                          provider.skirt);
                                    } else {
                                      return Text("noData");
                                    }
                                }
                              }),
                        ),
                        SizedBox(
                          height: mHeight * 0.5,
                          width: mWidth,
                          child: FutureBuilder(
                              future: provider.showShorts(),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return const Center(
                                      child: CircularProgressIndicator(
                                          color: AppColors.primaryColor),
                                    );

                                  case ConnectionState.done:

                                  default:
                                    if (snapshot.hasError) {
                                      return Center(
                                        child: Text("error"),
                                      );
                                    } else if (snapshot.hasData) {
                                      return showTab(mWidth, mHeight, context,
                                          provider.shorts);
                                    } else {
                                      return Text("noData");
                                    }
                                }
                              }),
                        ),
                        SizedBox(
                          height: mHeight * 0.5,
                          width: mWidth,
                          child: FutureBuilder(
                              future: provider.showScarfs(),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return const Center(
                                      child: CircularProgressIndicator(
                                          color: AppColors.primaryColor),
                                    );

                                  case ConnectionState.done:

                                  default:
                                    if (snapshot.hasError) {
                                      return Center(
                                        child: Text("error"),
                                      );
                                    } else if (snapshot.hasData) {
                                      return showTab(mWidth, mHeight, context,
                                          provider.skarfs);
                                    } else {
                                      return Text("noData");
                                    }
                                }
                              }),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
                                  SizedBox(height: mHeight * 0.01,)

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
}
