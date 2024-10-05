import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class Drawer_Title extends StatelessWidget {
  Drawer_Title ({super.key, required this.titlename, this.onTap, this.icon});
  String? titlename;
  VoidCallback? onTap;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      //width: 10.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent,width: 1),
      ),
      child: ListTile(
        leading: icon,
        title: Text('$titlename',style: TextStyle(fontSize: 20,color: Colors.white),),
        onTap: onTap,
      ),
    );
  }
}
