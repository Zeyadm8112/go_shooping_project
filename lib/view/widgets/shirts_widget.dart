import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

showTab(double mWidth,double mHeight ,BuildContext context,List<dynamic>list ){
return GridView.builder(
                                      itemCount: list.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 34,
                                        crossAxisSpacing: 8,
                                      ),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: mWidth * 0.5,
                                          height: mHeight * 0.4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                mHeight * 0.02),
                                            image: DecorationImage(
                                                image: NetworkImage(
'http://ecommerceicecode-001-site1.htempurl.com//IMG/${list[index].imagePath}'

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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              mHeight * 0.5)),
                                                  child: Center(
                                                    child: Text(
                                                      "35 % OFF ",
                                                      style: TextStyle(
                                                          color: Colors.orange,
                                                          fontSize:
                                                              mHeight * 0.015),
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
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              mHeight * 0.01)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              list[index].productName,
                                                              style: TextStyle(
                                                                  color: AppColors
                                                                      .primaryColor,
                                                                  fontSize:
                                                                      mHeight *
                                                                          0.018),
                                                            ),
                                                            // Text(
                                                            //   "Brand",
                                                            //   style: TextStyle(
                                                            //       color: AppColors
                                                            //           .primaryColor,
                                                            //       fontSize:
                                                            //           mHeight *
                                                            //               0.013),
                                                            // ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: mWidth * 0.1,
                                                          height:
                                                              mHeight * 0.07,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: AppColors
                                                                      .primaryColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius.circular(
                                                                        mHeight *
                                                                            0.01),
                                                                    bottomRight:
                                                                        Radius.circular(mHeight *
                                                                            0.01),
                                                                  )),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ImageIcon(
                                                                  AssetImage(
                                                                      'assets/images/cart.png'),
                                                                  color: Colors
                                                                      .white,
                                                                  size:
                                                                      mHeight *
                                                                          0.022,
                                                                ),
                                                                Text(
                                                                  "\$ 15.99",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          mHeight *
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
                                      });



}