import 'package:e_commerce/utility/widgets.dart';
import 'package:e_commerce/view/screens/cart_screen.dart';
import 'package:e_commerce/view/screens/main_screen.dart';
import 'package:e_commerce/view/screens/order_screen.dart';
import 'package:e_commerce/view/screens/profile_screen.dart';
import 'package:e_commerce/view_model/wishlist_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';

import '../../model/data/image_data.dart';
import '../../utility/app_colors.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    // المتغيرات بتاعة الريسبونسف مشروحة في صفحة تعديل البروفيل
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    final provider = Provider.of<WishlistViewModel>(context);
    return SafeArea(
      // الdrawer جايبه من مكتبة 
      child: ZoomDrawer(
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        drawerShadowsBackgroundColor: Colors.grey[300]!,
        slideWidth: mWidth * 0.65,
        // لو مش فاهمة اللون شوفي صفحة البروفيل الاديت
        menuBackgroundColor: AppColors.primaryColor,
        menuScreen:
          Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      Center(
        child: SizedBox(
          // color: Colors.red,
          height: mHeight * 0.0595,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: mWidth * 0.02,
              ),
              Column(
                children: [
                  Text(
                    "Zeyad Mohamed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: mHeight * 0.03,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Zeyadm792@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: mHeight * 0.02,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: ImageIcon(
          AssetImage('assets/images/homeorange.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WishlistScreen()),
          );
        },
        leading: ImageIcon(
          AssetImage('assets/images/heartorange.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Wishlist",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
            MaterialPageRoute(builder: (context) => const CartScreen());
        },
        leading: ImageIcon(
          AssetImage('assets/images/cartorange.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          //  Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyUi()),);
            MaterialPageRoute(builder: (context) => const OrderScreen());
        },
        leading: ImageIcon(
          AssetImage('assets/images/orderhistory.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Order History",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        },
        leading: ImageIcon(
          AssetImage('assets/images/profile.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingController()),);
        },
        leading: ImageIcon(
          AssetImage('assets/images/settings.png'),
          color: AppColors.secondaryColor,
        ),
        title: Text(
          "App Settings",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.question_answer, color: Colors.orange),
        title: Text(
          "Help & FAQs",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: ImageIcon(AssetImage('assets/images/logout.png'),
            color: Colors.orange),
        title: Text(
          "Logout",
          style: TextStyle(
            fontSize: mHeight * 0.03,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  )
,
        mainScreen: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: mWidth,
                      height: mHeight * 0.12,
                      color: AppColors.primaryColor,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MenuIcon(mHeight, context),
                          Text("Wishlist",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mHeight * 0.03,
                                  fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {
            MaterialPageRoute(builder: (context) => const MainScreen());
                              },
                              icon: ImageIcon(
                                AssetImage('assets/images/home.png'),
                                color: Colors.white,
                                size: mHeight * 0.04,
                              ))
                        ]),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'May your wishes come true',
                      style: TextStyle(
                        fontSize: mHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: mWidth * 0.1,
                      child: IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/images/list.png"),
                          color: provider.listColor,
                        ),
                        onPressed: () {
                          provider.listView();
                        },
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.1,
                      child: IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/images/grid.png"),
                          color: provider.gridColor,
                        ),
                        onPressed: () {
                          // كاتب فنكشن بيغير من جريد لي ليست موجود في  WishListViewModelScreen
                          provider.gridView();
                        },
                      ),
                    )
                  ],
                ),
                //لو المتغير ليست من قيمة بولين  يساو يغلط اعرض  الجريد
                provider.list == false
                    ? SizedBox(
                        height: mHeight * 0.8,
                        width: mWidth,
                        child: GridView.builder(
                            itemCount: imagesUrls.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
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
                                        // ليست من نوع سترينج في اسمي الصور الي في الاسيست
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
                                                color: AppColors.secondaryColor,
                                                fontSize: mHeight * 0.015),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: mHeight * 0.014,
                                      right: mWidth * 0.015,
                                      child: Container(
                                        width: mWidth * 0.07,
                                        height: mHeight * 0.04,
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.5)),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: AppColors.secondaryColor,
                                            size: mHeight * 0.03,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: mHeight * 0.25,
                                      left: mWidth * 0.05,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
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
                                            ]),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      )
                      // else لو الليست تساوي ترو اعرض الجريد
                    : SizedBox(
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
                                          height: mHeight * 0.15,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.01),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: mWidth * 0.35,
                                                height: mHeight * 0.2,
                                                child: Image.asset(
                                                  imagesUrls[index],
                                                  fit: BoxFit.fill,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(
                                                            mHeight * 0.01),
                                                        bottomLeft: Radius.circular(
                                                            mHeight * 0.01))),
                                              ),
                                              SizedBox(
                                                width: mWidth * 0.02,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("Product name",style: TextStyle(fontSize: mHeight * 0.02),),
                                                  Text("Brand",style: TextStyle(fontSize: mHeight * 0.02),),
                                                  Row(
                                                    children: [
                                                      RatingBar.builder(
                                                          itemSize: mHeight * 0.02,
                                                          initialRating: 4.5,
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors.amber,
                                                              ),
                                                          onRatingUpdate: (_) {}),
                                                      Text("+ 23",style: TextStyle(fontSize: mHeight * 0.02),),
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
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(mHeight * 0.01),topLeft:  Radius.circular(mHeight * 0.02))
                                        ),
                                        child: ImageIcon(
                                          AssetImage('assets/images/heartorange.png')
                                        ,color: AppColors.secondaryColor,
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
          ),
        ),
      ),
    );
  }
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
