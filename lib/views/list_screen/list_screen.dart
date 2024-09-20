import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/views/home_screen/died_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/text.dart';

class List_Screen extends StatefulWidget {
  const List_Screen({super.key});

  @override
  State<List_Screen> createState() => _List_ScreenState();
}

class _List_ScreenState extends State<List_Screen> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        title: Text("Died List 2.0",style: largewhite,),
      centerTitle: true,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: AppColor.appbar,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.r),
                    bottomLeft: Radius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0).r,
                  child: SizedBox(
                    height: 45.h,
                    width: 360.w,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xfff1f1f1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20).r,
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search for Items",
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
          
              Died_List(),
          
            ],
          ),
        ),
      ),
    );
  }
}
