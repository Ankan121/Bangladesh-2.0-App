import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/views/add_data_screen/add_data_screen.dart';
import 'package:bangladesh_2point0/views/list_screen/list_screen.dart';
import 'package:bangladesh_2point0/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';


class Navigation_Var extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Navigation_Var> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home_Screen(),
    List_Screen(),
    Add_List_Screen(),
    Profile_Screen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar:
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.shifting, // Shifting
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: AppColor.appbar,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'List',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add),
              label: 'Add List',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
