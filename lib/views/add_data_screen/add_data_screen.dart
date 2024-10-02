import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/db_service/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/text.dart';
import '../../global_widgets/carousel_slider.dart';
import '../home_screen/died_list.dart';

class Add_List_Screen extends StatefulWidget {
  const Add_List_Screen({super.key});

  @override
  State<Add_List_Screen> createState() => _Add_List_ScreenState();
}

class _Add_List_ScreenState extends State<Add_List_Screen> {

  final titleEditingController = TextEditingController();
  final died_dateEditingController = TextEditingController();
  final descriptionEditingController = TextEditingController();

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
        title: Text('Add Data 2.0',style: largewhite,),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(0.0).r,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0).r,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0).r,
                                      child: Text("Title",style: largeblack,),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        controller: titleEditingController,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                            borderRadius: BorderRadius.circular(40.r),
                                          ),

                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(40.r),
                                          ),
                                          labelText: "Enter Title",
                                          labelStyle: TextStyle(
                                              color: Colors.black
                                          ),
                                        ), // Label for the name field
                                      ),
                                    ),

                                    SizedBox(height: 20.h,),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0).r,
                                      child: Text("Died Date",style: largeblack),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        controller: died_dateEditingController,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                            borderRadius: BorderRadius.circular(40.r),
                                          ),

                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(40.r),
                                          ),
                                          labelText: "Died Date",
                                          labelStyle: TextStyle(
                                              color: Colors.black,
                                          ),
                                        ), // Label for the name field
                                      ),
                                    ),

                                    SizedBox(height: 20.0.h),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0).r,
                                      child: Text("Description",style: largeblack),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        controller: descriptionEditingController,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 60.0.h, horizontal: 10.0.w),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                           //borderRadius: BorderRadius.circular(40.r),
                                          ),

                                          border: OutlineInputBorder(
                                            //borderRadius: BorderRadius.circular(40.r),
                                          ),
                                          labelText: "Enter Description",
                                          labelStyle: TextStyle(
                                              color: Colors.black
                                          ),
                                        ), // Label for the name field
                                      ),
                                    ),

                                    SizedBox(height: 30.0.h),
                                    Center(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            //backgroundColor: AppColor.whiteall,
                                            shadowColor: Colors.greenAccent,
                                            elevation: 3,
                                            fixedSize: Size(306.w, 48.h), // specify width, height
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20.r,))),
                                        onPressed: () async{
                                          if(titleEditingController.text.isEmpty || died_dateEditingController.text.isEmpty || died_dateEditingController.text.isEmpty){
                                            var snackBar = const SnackBar(content: Text('Please All field are required !'));
                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          }else{
                                            await DbHelper().addnote(context, titleEditingController.text, died_dateEditingController.text, descriptionEditingController.text);
                                          }
                                        },
                                        child: Text('Add',style: context.textTheme.titleLarge?.copyWith(color: AppColor.appbar)), // Text on the button
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
