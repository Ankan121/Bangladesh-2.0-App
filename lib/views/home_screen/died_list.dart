import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/text.dart';

class Died_List extends StatefulWidget {
  const Died_List({super.key});

  @override
  State<Died_List> createState() => _Died_ListState();
}

class _Died_ListState extends State<Died_List> {

  List item = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);


    return ListView.builder(
      physics: NeverScrollableScrollPhysics(), // Disable ListView's own scrolling
      shrinkWrap: true, // Make the ListView take only as much space as needed
      itemCount: item.length, // Number of items
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15.0).r,
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              height: 100.h,
              //width: 100.w,
              decoration: BoxDecoration(
                //border: Border.all(color: Color(0xff008000)),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 100,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Color(0xff008000)),
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://images.prothomalo.com/prothomalo-english%2F2024-07%2Ff8deac4e-c097-4db2-8d1c-ba2f7a5a9542%2FHow_the_quota_reform_movement_unfolds.webp?rect=0%2C0%2C486%2C255&w=1200&ar=40%3A21&auto=format%2Ccompress&ogImage=true&mode=crop&overlay=&overlay_position=bottom&overlay_width_pct=1',
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Abu Sayeed',style: largeblack,),
                        Text('Died:- July 16, 2024 ',style: mediumblack,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
