import 'package:flutter/material.dart';
import 'package:flutter_braintree/flutter_braintree.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../utility/app_colors.dart';
import '../../utility/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
          backgroundColor: Colors.white,
          body: Column(
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
                        Text("Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: mHeight * 0.03,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/HomeScreen');
                            },
                            icon: ImageIcon(
                              AssetImage('assets/images/home.png'),
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
                height: mHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        'Product: ',
                        style: TextStyle(
                          color: HexColor('#9F94AB'),
                          fontSize: mHeight * 0.03,
                        ),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Subtotal: ',
                        style: TextStyle(
                          color: HexColor('#9F94AB'),
                          fontSize: mHeight * 0.03,
                        ),
                      ),
                      Text(
                        '35.97\$',
                        style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Taxes: ',
                        style: TextStyle(
                          color: HexColor('#9F94AB'),
                          fontSize: mHeight * 0.03,
                        ),
                      ),
                      Text(
                        '15.99\$',
                        style: TextStyle(
                            fontSize: mHeight * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: mHeight * 0.02,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      buildCartItem(mWidth, mHeight),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 5.0,
                  ),
                  itemCount: 10,
                ),
              ),
              Container(
                height: mHeight * 0.08,
                width: mWidth,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  // borderRadius: const BorderRadiusDirectional.only(
                  //   topStart: Radius.circular(8.0),
                  //   topEnd: Radius.circular(8.0),
                  //   bottomStart: Radius.circular(30.0),
                  //   bottomEnd: Radius.circular(30.0),
                  // ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    onPressed: () async{
var request= BraintreeDropInRequest(
  tokenizationKey: 'gnwdw8j2ttjrk35t',
  collectDeviceData: true,
  paypalRequest: BraintreePayPalRequest(amount: '10.0',
  displayName: 'GoShop',
  
  ),
  cardEnabled: true
  
);
BraintreeDropInResult? result= await BraintreeDropIn.start(request);
if(result !=null){
  print(result.paymentMethodNonce.description);
  print(result.paymentMethodNonce.nonce);
}
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.credit_score,
                          color: HexColor('#E99000'),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text(
                          'Checkout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
