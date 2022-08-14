import 'package:e_commerce/model/data/catagories_data.dart';
import 'package:e_commerce/utility/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ionicons/ionicons.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    bool gridBool = true;
    bool listBool = false;
    Color listColor=Colors.purple;
    Color gridColor=Colors.purple;
    return Scaffold(
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
                          onPressed: () {},
                          icon: Icon(
                            Ionicons.menu_outline,
                            color: Colors.white,
                            size: mHeight * 0.04,
                          )),
                      Text("WishList",
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
              height: mHeight * 0.013,
            ),
            Padding(
              padding: EdgeInsets.all(mHeight * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("may Your wish become true",
                          style: TextStyle(fontSize: mHeight * 0.03)),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  gridBool = true;
                                  gridColor = Colors.orange;
                                });
                              },
                              icon: Icon(
                                Icons.grid_on,
                                color: gridColor,
                              )),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                listBool = true;
                                listColor = Colors.orange;
                              });
                            },
                            icon: Icon(Icons.list, color: listColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GridContainer(mWidth, mHeight, gridBool, listBool)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
