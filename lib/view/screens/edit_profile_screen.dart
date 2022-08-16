import 'package:e_commerce/utility/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //  المتغيرات دول معرفهم عشان اعمل السكرين ريسبونسف المتغير  بيجيب عرض الشاشة بتاع جهازي عشان استخدمه تحت في الاحجام وهوضحلك اكتر تحت
    double mWidth = MediaQuery.of(context).size.width;
    // المتغير ده بيجيب الطول بتاع الجهاز وبستخدمه في نفس الموضوع
    double mHeight = MediaQuery.of(context).size.height;
   const Color primaryColor = Color(0xff432267);
   const Color secondaryColor = Color(0xffE99000);

    return SafeArea(
        child: Scaffold(
          //انا معرف كلاس حاطط فيه اللاوان الي مستخدمها في التطبيق
            backgroundColor: primaryColor,
            body: Column(
              children: [
                // هنا مستخدم المتغير بتاع الطول عشان ادي الطول بتاع السايزد بوكس ياخد النسبة دي من الشاشة
                SizedBox(
                  height: mHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white, fontSize: mHeight * 0.03),
                      textAlign: TextAlign.end,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel",
                            style: TextStyle(
                                        //انا معرف كلاس حاطط فيه اللاوان الي مستخدمها في التطبيق

                                color: secondaryColor,
                                fontSize: mHeight * 0.025)))
                  ],
                ),
                SizedBox(
                  height: mHeight * 0.03,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: mHeight * 0.16,
                      // هنا مستخدم المتغير بتاع العرض عشان الكونتينر اديله ثلث عرض الشاشة
                      width: mWidth * 0.3,
                      
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      // حطيت صورة البروفيل من النت
                      child: Image.network(
                        'http://cdn.onlinewebfonts.com/svg/img_24787.png',
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: mHeight * 0.09,
                      left: mWidth * 0.14,
                      child: SizedBox(
                        //  حطيت الصورة الي واخدها من الاسيسيت بتاعة البروجكت للاديت
                          width: mWidth * 0.15,
                          child: Image.asset('assets/images/edit2.png')),
                    )
                  ],
                ),
                SizedBox(
                  height: mHeight * 0.04,
                ),
                Container(
                  height: mHeight * 0.09,
                  width: mWidth * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(mHeight * 0.015)),
                  child: Row(children: [
                    Container(
                      height: mHeight * 0.09,
                      width: mWidth * 0.13,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(mHeight * 0.015),
                              bottomLeft: Radius.circular(mHeight * 0.015))),
                      child: Center(
                        child: Image.network(
                          'http://cdn.onlinewebfonts.com/svg/img_24787.png',
                          color: primaryColor,
                          width: mWidth * 0.08,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.04,
                    ),
                    Text(
                      "Zeyad Mohamed",
                      style: TextStyle(
                          fontSize: mHeight * 0.03,
                          color: primaryColor),
                    )
                  ]),
                ),
                SizedBox(
                  height: mHeight * 0.02,
                ),
                Container(
                  height: mHeight * 0.09,
                  width: mWidth * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(mHeight * 0.015)),
                  child: Row(children: [
                    Container(
                      height: mHeight * 0.09,
                      width: mWidth * 0.13,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(mHeight * 0.015),
                              bottomLeft: Radius.circular(mHeight * 0.015))),
                      child: Center(
                        child: Image.asset(
                          'assets/images/mail.png',
                          color: primaryColor,
                          width: mWidth * 0.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.04,
                    ),
                    Text(
                      "Zeyadm792@gmail.com",
                      style: TextStyle(
                          fontSize: mHeight * 0.03,
                          color: primaryColor),
                    )
                  ]),
                ),
                SizedBox(
                  height: mHeight * 0.02,
                ),
                Container(
                  height: mHeight * 0.09,
                  width: mWidth * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(mHeight * 0.015)),
                  child: Row(children: [
                    Container(
                      height: mHeight * 0.09,
                      width: mWidth * 0.13,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(mHeight * 0.015),
                              bottomLeft: Radius.circular(mHeight * 0.015))),
                      child: Center(
                        child: Image.asset(
                          'assets/images/homesharp.png',
                          color: primaryColor,
                          width: mWidth * 0.09,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.04,
                    ),
                    Text(
                      "Suez, Egypt",
                      style: TextStyle(
                          fontSize: mHeight * 0.03,
                          color: primaryColor),
                    )
                  ]),
                ),
                SizedBox(
                  height: mHeight * 0.02,
                ),
                Container(
                  height: mHeight * 0.09,
                  width: mWidth * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(mHeight * 0.015)),
                  child: Row(children: [
                    Container(
                      height: mHeight * 0.09,
                      width: mWidth * 0.13,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(mHeight * 0.015),
                              bottomLeft: Radius.circular(mHeight * 0.015))),
                      child: Center(
                        child: Image.asset(
                         'assets/images/location.png',
                          color: primaryColor,
                          width: mWidth * 0.09,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.04,
                    ),
                    Text(
                      "El Salam 1, Osman St.",
                      style: TextStyle(
                          fontSize: mHeight * 0.03,
                          color: primaryColor),
                    )
                  ]),
                ),
                SizedBox(
                  height: mHeight * 0.02,
                ),
                Container(
                  height: mHeight * 0.09,
                  width: mWidth * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(mHeight * 0.015)),
                  child: Row(children: [
                    Container(
                      height: mHeight * 0.09,
                      width: mWidth * 0.13,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(mHeight * 0.015),
                              bottomLeft: Radius.circular(mHeight * 0.015))),
                      child: Center(
                        child: Image.asset(
                          'assets/images/phone.png',
                          color: primaryColor,
                          width: mWidth * 0.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mWidth * 0.04,
                    ),
                    Text(
                      "+201020622808",
                      style: TextStyle(
                          fontSize: mHeight * 0.03,
                          color: primaryColor),
                    )
                  ]),
                )
           ,
           SizedBox(
          height:  mHeight* 0.036
           ),
           InkWell(
            onTap: (){
              Navigator.pop(context);
            },
             child: Container(
              width: mWidth,
              height: mHeight * 0.07,
              color: secondaryColor,
              child: Center(child:Text('Save',style: TextStyle(color: Colors.white,fontSize: mHeight * 0.03),)),
             ),
           )

              ],
            )));
  }
}
