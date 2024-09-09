import 'dart:async';

import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState(){
    Timer(Duration(seconds: 2), () {
      Get.to<Home_Screen>(Home_Screen());
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColor.appbar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children:[
                  Opacity(
                    opacity: 0.85,
                    child: Container(
                    height: 820.h,
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
                    top: 220,
                    left: 60,
                    child: Container(
                      height: 300.h,
                      width: 300,
                      padding: EdgeInsets.all(8), // Border width
                      decoration: BoxDecoration(color: AppColor.appbar, shape: BoxShape.circle),
                      child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/splash/rounded.jpg',fit: BoxFit.fill,)),
                          ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 130,
                    child: Container(
                      height: 150.h,
                      width: 150,
                      padding: EdgeInsets.all(8), // Border width
                      decoration: BoxDecoration(color: AppColor.appbar, shape: BoxShape.circle),
                      child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/splash/rounded 3.jpeg',fit: BoxFit.fill,)),
                          ),
                    ),
                  ),
                  Positioned(
                    top: 530,
                    left: 10,
                    child: Container(
                      height: 150.h,
                      width: 150,
                      padding: EdgeInsets.all(8), // Border width
                      decoration: BoxDecoration(color: AppColor.appbar, shape: BoxShape.circle),
                      child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/splash/rounded 1.jpeg',fit: BoxFit.fill,)),
                          ),
                    ),
                  ),
                  Positioned(
                    top: 530,
                    left: 250,
                    child: Container(
                      height: 150.h,
                      width: 150,
                      padding: EdgeInsets.all(8), // Border width
                      decoration: BoxDecoration(color: AppColor.appbar, shape: BoxShape.circle),
                      child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/splash/rounded 4.jpeg',fit: BoxFit.fill,)),
                          ),
                    ),
                  ),
                  Positioned(
                    top: 530,
                    left: 250,
                    child: Container(
                      height: 150.h,
                      width: 150,
                      padding: EdgeInsets.all(8), // Border width
                      decoration: BoxDecoration(color: AppColor.appbar, shape: BoxShape.circle),
                      child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/splash/rounded 4.jpeg',fit: BoxFit.fill,)),
                          ),
                    ),
                  ),
                  Positioned(
                    top: 720,
                    left: 60,
                    child: Container(
                      height: 70.h,
                      width: 300,
                      padding: EdgeInsets.all(8), // Border width
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40),),
                        border: Border.all(color: Colors.green,width: 5),

                        color: Colors.red,),
                      child: Center(child: Text('Bangladesh 2.0',style: TextStyle(fontSize: 30),))
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
