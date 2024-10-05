import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/global_widgets/drawer_title.dart';
import 'package:bangladesh_2point0/global_widgets/profile_details.dart';
import 'package:bangladesh_2point0/views/home_screen/died_list.dart';
import 'package:bangladesh_2point0/views/home_screen/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/text.dart';
import '../../global_widgets/carousel_slider.dart';
import '../list_screen/list_screen.dart';
import '../navigation_bar/navigation_bar.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);


    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        title: Text("Home Page",style: largewhite,),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        // actions: [
        //   IconButton(onPressed: () {
        //
        //     }, icon: const Icon(Icons.search,color: Colors.white,size: 30,),),
        // ],
      ),
      drawer: const Drawer_Screen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              Container(
                width: 450.w,
                decoration: BoxDecoration(
                    color: AppColor.bodycolor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.r),
                      topLeft: Radius.circular(30.r),
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    Padding(
                      padding: const EdgeInsets.all(2.0).r,
                      child: const Carousel_Slider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0).r,
                      child: Text('News',style: largeblack,),
                    ),
                    const Died_List(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
