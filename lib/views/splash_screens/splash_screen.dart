import 'dart:async';

import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/text.dart';
import '../navigation_bar/navigation_bar.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState(){
    Timer(Duration(seconds: 2), () {
      Get.off<Home_Screen>(Navigation_Var());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);



    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    double yourWidgetWidth = 100.0; // আপনার উইজেটের প্রস্থ
    double yourWidgetHeight = 100.0; // আপনার উইজেটের উচ্চতা



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // AppBar এর ব্যাকগ্রাউন্ড রঙ সম্পূর্ণ স্বচ্ছ করে দিবে।
        elevation: 0, // Elevation সরিয়ে দিবে, যাতে ছায়া না থাকে।
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Column(
        children: [
          Stack(
            children:[
              Opacity(
                opacity: 0.85,
                child: Container(
                height: 812.h,
            width: 420.w,
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/splash/bacground.jpg'),
                fit: BoxFit.fill,
      ),
      ),
      ),
              ),
              Positioned(
                // left: screenWidth / 2 - (yourWidgetWidth / 2), // স্ক্রিনের একদম মাঝখানে
                // top: screenHeight / 2 - (yourWidgetHeight / 2), // স্ক্রিনের ভর্তিকাল মাঝখানে
                top: MediaQuery.of(context).size.height / 2 - 175.r,
                left: MediaQuery.of(context).size.width / 2 - 130.r,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // ছায়ার রঙ এবং স্বচ্ছতা
                        spreadRadius: 5.0, // ছায়ার ছড়ানো
                        blurRadius: 7.0, // ছায়ার ঝাপসা হওয়া
                        offset: Offset(0, 3), // ছায়ার অবস্থান (x, y)
                      ),
                    ],// গোলাকার শেপ
                    border: Border.all(
                      color: Colors.white, // বর্ডার রঙ
                      width: 4.0, // বর্ডারের প্রস্থ
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 56.0, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
                    backgroundImage: AssetImage('assets/splash/rounded.jpg'), // অ্যাসেট ইমেজ লোড
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 - 350.r,
                left: MediaQuery.of(context).size.width / 2 - 70.r,

                // top: 50.r,
                // left: 115.r,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // ছায়ার রঙ এবং স্বচ্ছতা
                        spreadRadius: 5.0, // ছায়ার ছড়ানো
                        blurRadius: 7.0, // ছায়ার ঝাপসা হওয়া
                        offset: Offset(0, 3), // ছায়ার অবস্থান (x, y)
                      ),
                    ],// গোলাকার শেপ
                    border: Border.all(
                      color: Colors.white, // বর্ডার রঙ
                      width: 4.0, // বর্ডারের প্রস্থ
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 56.0, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
                    backgroundImage: AssetImage('assets/splash/rounded 3.jpeg'), // অ্যাসেট ইমেজ লোড
                  ),
                ),
              ),
              Positioned(
                // top: 530.r,
                // left: 10.r,
                top: MediaQuery.of(context).size.height / 2 - -123.r,
                left: MediaQuery.of(context).size.width / 2 - 180.r,

                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // ছায়ার রঙ এবং স্বচ্ছতা
                        spreadRadius: 5.0, // ছায়ার ছড়ানো
                        blurRadius: 7.0, // ছায়ার ঝাপসা হওয়া
                        offset: Offset(0, 3), // ছায়ার অবস্থান (x, y)
                      ),
                    ],// গোলাকার শেপ
                    border: Border.all(
                      color: Colors.white, // বর্ডার রঙ
                      width: 4.0, // বর্ডারের প্রস্থ
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 56.0, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
                    backgroundImage: AssetImage('assets/splash/rounded 1.jpeg'), // অ্যাসেট ইমেজ লোড
                  ),
                ),
              ),
              Positioned(
                // top: 530.r,
                // left: 235.r,
                top: MediaQuery.of(context).size.height / 2 - -123.r,
                left: MediaQuery.of(context).size.width / 2 - -40.r,

                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // ছায়ার রঙ এবং স্বচ্ছতা
                        spreadRadius: 5.0, // ছায়ার ছড়ানো
                        blurRadius: 7.0, // ছায়ার ঝাপসা হওয়া
                        offset: Offset(0, 3), // ছায়ার অবস্থান (x, y)
                      ),
                    ],// গোলাকার শেপ
                    border: Border.all(
                      color: Colors.white, // বর্ডার রঙ
                      width: 4.0, // বর্ডারের প্রস্থ
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 56.0, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
                    backgroundImage: AssetImage('assets/splash/rounded 4.jpeg',), // অ্যাসেট ইমেজ লোড
                  ),
                ),
              ),
              Positioned(
                top: 720.r,
                left: 35.r,
                child: Container(
                  height: 70,
                  width: 300.w,
                  padding: EdgeInsets.all(8).r, // Border width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40),),
                    border: Border.all(color: Colors.white,width: 5),
                    color: Colors.red,),
                  child: Center(child: Text('Bangladesh 2.0',style: largeblack,))
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
