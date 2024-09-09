import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drawer_Title extends StatelessWidget {
  Drawer_Title ({super.key, required this.titlename});
  String? titlename;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      //width: 10.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 1),
      ),
      child: ListTile(
        title: Text('$titlename',style: TextStyle(fontSize: 20,color: Colors.white),),
        onTap: () {
        },
      ),
    );
  }
}
