
import 'package:bangladesh_2point0/views/home_screen/drawerlist/profile_edite.dart';
import 'package:bangladesh_2point0/views/list_screen/list_screen.dart';
import 'package:bangladesh_2point0/views/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants/colors.dart';
import '../../global_widgets/drawer_title.dart';
import '../../global_widgets/profile_details.dart';
import '../navigation_bar/navigation_bar.dart';


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
          // Drawer Page Navivatorn var Navigate
          // Drawer_Title(
          //   titlename: 'Died List 2.0',
          //   onTap: ()  {
          //     Navigation_Var.navKey.currentState?.setState(() {
          //       Navigation_Var.navKey.currentState?.currentIndex = 1; // `Add List` ট্যাবে নেভিগেট করতে `index = 1`
          //     });
          //     Get.offAll(Navigation_Var());
          //   },
          // ),


          Drawer_Title(
            titlename: 'Profile Edite',
              icon: Icon(Icons.edit,color: Colors.white,),
            onTap: (){Get.to(ProfileEdite());}
          ),

          Drawer_Title(titlename: "Setting",icon: Icon(Icons.settings,color: Colors.white,),),

          Drawer_Title(titlename: "Help & Feedback",icon: Icon(Icons.feedback_outlined,color: Colors.white,),),
        ],
      ),
    );
  }
}
