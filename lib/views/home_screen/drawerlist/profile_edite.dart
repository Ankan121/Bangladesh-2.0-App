import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/colors.dart';
import '../../../constants/text.dart';

class ProfileEdite extends StatefulWidget {
  const ProfileEdite({super.key});

  @override
  State<ProfileEdite> createState() => _ProfileEditeState();
}

class _ProfileEditeState extends State<ProfileEdite> {

  @override
  Widget build(BuildContext context) {


    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);

    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;



    return  Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text('Profile',style: largewhite,),
        centerTitle: true,
        
      
      ),
      body:  SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 150.h,),
              SafeArea(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight * 0.73,
                      decoration: BoxDecoration(
                        color: AppColor.bodycolor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.r),
                          topLeft: Radius.circular(30.r),
                        ),
                      ),
                      child: Center(
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: screenHeight *0.4,
                            width: screenWidth * 0.80,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Ankan Chandra Biswas',style: largeblack),
                                Divider(color: Colors.black12,thickness: 1,),
                                Spacer(),
                                Text('ankan.dev.prog@gmail.com',style: largeblack),
                                Divider(color: Colors.black12,thickness: 1,),
                                Spacer(),
                                Text('01571258430',style: largeblack),
                                Divider(color: Colors.black12,thickness: 1,),
                                Spacer(),
                                Text('Raipura, Narsingdi',style: largeblack),
                                Divider(color: Colors.black12,thickness: 1,),
                                Spacer(),
                                TextButton(onPressed: (){
                                  //Get.to(ApplyScreen());
                                }, child: Text('Logout',style: largeblack)),

                              ],),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: -80.r, // Adjust top value to prevent overflow
                        //left: 120.r,
                        left: MediaQuery.of(context).size.width / 2 - 80.r,
                        child: Container(
                          //alignment: Alignment.center,
                          width: 150.0, // CircleAvatar এর ব্যাসার্ধের জন্য দ্বিগুণ আকার
                          height: 150.0,
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
                            radius: 56.0.r, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
                            backgroundImage: AssetImage('assets/me/ankan.jpg'), // অ্যাসেট ইমেজ লোড
                          ),
                        )

                    ),
                    Positioned(
                        left: 225,
                        child: IconButton(onPressed: (){},
                            iconSize: 40,
                            icon: Icon(Icons.camera,color: AppColor.appbar,)))
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
