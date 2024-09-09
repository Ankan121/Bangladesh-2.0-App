import 'package:bangladesh_2point0/routes/routes_names.dart';
import 'package:bangladesh_2point0/views/home_screen/home_screen.dart';
import 'package:bangladesh_2point0/views/splash_screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteNames.splash:
        return MaterialPageRoute(builder: (context)=> const Splash_Screen());
      case RouteNames.home_screen:
        return MaterialPageRoute(builder: (context)=> const Home_Screen());
      default:
        return MaterialPageRoute(builder: (context)=> const Splash_Screen());
    }
  }
}