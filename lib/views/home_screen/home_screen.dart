import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/global_widgets/drawer_title.dart';
import 'package:bangladesh_2point0/global_widgets/profile_details.dart';
import 'package:flutter/material.dart';

import '../../global_widgets/carousel_slider.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        title: Text("Home Page",style: TextStyle(fontSize: 30, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {  }, icon: Icon(Icons.search,color: Colors.white,size: 30,),),
        ],
      ),
      drawer: Drawer(
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                height: 800,
                width: 450,
                decoration: BoxDecoration(
                  color: AppColor.bodycolor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Carousel_Slider(),
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
