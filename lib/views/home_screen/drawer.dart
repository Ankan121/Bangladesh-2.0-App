import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../global_widgets/drawer_title.dart';
import '../../global_widgets/profile_details.dart';

class Drawer_Screen extends StatefulWidget {
  const Drawer_Screen({super.key});

  @override
  State<Drawer_Screen> createState() => _Drawer_ScreenState();
}

class _Drawer_ScreenState extends State<Drawer_Screen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.appbar,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.appbar,
            ),
            accountName: Text("${Profile_Detils.name}",style: TextStyle(color: Colors.white,fontSize: 20),),
            accountEmail: Text("${Profile_Detils.email}",style: TextStyle(color: Colors.white,fontSize: 15),),
            currentAccountPicture: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/account_pic/Pass 3.jpg")
              ),
            ),
          ),
          SizedBox(height: 20,),
          Drawer_Title(
            titlename: 'Did',
          ),
          SizedBox(height: 40,),
          Drawer_Title(titlename: "Died List 2.0"),
          SizedBox(height: 40,),
          Drawer_Title(titlename: "Add Data 2.0"),
        ],
      ),
    );
  }
}
