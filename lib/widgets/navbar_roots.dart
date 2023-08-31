import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/info_screen.dart';
import '../screens/messages_screen.dart';
import '../screens/schedule_screen.dart';
import '../screens/settings_screen.dart';
class Navbar_Roots extends StatefulWidget {
  const Navbar_Roots({super.key});

  @override
  State<Navbar_Roots> createState() => _Navbar_RootsState();
}

class _Navbar_RootsState extends State<Navbar_Roots> {
  int _selectedIndex = 0;
  final _screens = [
    //Home Screen
    Home_Screen(),
    //Message Screen
    Messages_Screen(),
    //Schedule Screen
    Schedule_Screen(),
    //Settings Screen
    Settings_Screen(),
    //Info_Screen
    Info_Screen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Messages",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: "Schedule",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.info),
              label: "Info",
            ),
          ],
        ),
      ),
    );
  }
}