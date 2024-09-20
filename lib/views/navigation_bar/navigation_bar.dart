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
      // ClipRRect(
      // borderRadius: BorderRadius.only(
      // topLeft: Radius.circular(30.0),
      // topRight: Radius.circular(30.0),
      //           ),
      //   child: ClipRRect(
      //     borderRadius: const BorderRadius.only(
      //       topRight: Radius.circular(30),
      //       topLeft: Radius.circular(30),
      //     ),
      //         child: BottomNavigationBar(
      //           type: BottomNavigationBarType.shifting, // Shifting
      //           selectedItemColor: Colors.white,
      //           unselectedItemColor: Colors.grey,
      //           items: [
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.home_outlined),
      //               label: 'Home',
      //               backgroundColor: Colors.cyan, // <-- This works for shifting
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.list_alt),
      //               label: 'List',
      //               backgroundColor: Colors.green, // <-- This works for shifting
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.playlist_add),
      //               label: 'Add List',
      //               backgroundColor: Colors.green, // <-- This works for shifting
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(Icons.person),
      //               label: 'Profile',
      //               backgroundColor: Colors.green, // <-- This works for shifting
      //             ),
      //           ],
      //         ),
      //       ),
      // ),
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
          // selectedItemColor: Color(0xff33907C),
          // unselectedItemColor: Colors.black,
          // selectedLabelStyle: TextStyle(
          //   color: Colors.deepOrange,
          // ),
          // unselectedLabelStyle: TextStyle(
          //     color: Colors.redAccent
          // ),
        ),
      ),
    );
  }
}
