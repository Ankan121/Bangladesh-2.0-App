import 'package:bangladesh_2point0/routes/routes_names.dart';
import 'package:bangladesh_2point0/views/add_data_screen/add_data_screen.dart';
import 'package:bangladesh_2point0/views/home_screen/died_list.dart';
import 'package:bangladesh_2point0/views/home_screen/home_screen.dart';
import 'package:bangladesh_2point0/views/splash_screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/list_screen/list_screen.dart';
import '../views/profile_screen/profile_screen.dart';

class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteNames.splash:
        return MaterialPageRoute(builder: (context)=> const Splash_Screen());
      case RouteNames.home_screen:
        return MaterialPageRoute(builder: (context)=> const Home_Screen());
      case RouteNames.dist_screen:
        return MaterialPageRoute(builder: (context)=> const List_Screen());
      case RouteNames.add_data_screen:
        return MaterialPageRoute(builder: (context)=> const Add_List_Screen());
      case RouteNames.profile_screen:
        return MaterialPageRoute(builder: (context)=> const Profile_Screen());
      default:
        return MaterialPageRoute(builder: (context)=> const Splash_Screen());
    }
  }
}