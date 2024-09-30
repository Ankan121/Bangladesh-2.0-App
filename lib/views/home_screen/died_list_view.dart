import 'package:bangladesh_2point0/controller/home_controller.dart';
import 'package:bangladesh_2point0/model/diedlistmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class DiedListView extends StatefulWidget {
  DiedListView({super.key, this.model});

  final DiedList? model;

  @override
  State<DiedListView> createState() => _DiedListViewState();
}

class _DiedListViewState extends State<DiedListView> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);


    return GetBuilder<Home_Controller>(builder: (homcon) {
      return Scaffold(
        backgroundColor: AppColor.appbar,
        appBar: AppBar(
          backgroundColor: AppColor.appbar,
          leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: AppColor.bodycolor,)),
          title: Text('${widget.model!.name}',style: largewhite,),
          centerTitle: true,),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40.h,),
                Container(
                  width: double.infinity.w,
                  height: 750.h,
                  //height: .h,
                  decoration: BoxDecoration(
                      color: AppColor.bodycolor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r),
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity.w,
                              height: 350.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('${widget.model!.img }'),
                                  fit: BoxFit.cover,
                                ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.r),
                                    topLeft: Radius.circular(30.r),
                                  ),
                                //border: Border.all(color: Colors.white,width: 1)

                              ),
                            ),
                            SizedBox(height: 20.h,),
                            Padding(
                              padding: const EdgeInsets.all(8.0).r,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name:- ${widget.model!.name}',style: largeblack,),
                                  SizedBox(height: 20.h,),
                                  Text('Description:-\n${widget.model!.description}',style: largeblack,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
