import 'package:flutter/material.dart';

import 'MyProfile.dart';
import 'Screens/home.dart';
import 'Screens/hoomscreen.dart';
import 'Screens/setting.dart';

class BottomNav extends StatefulWidget {
   BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int currentindex=0;

   List<Widget>Screens=[
     HomePage(),
     Setting(),
     HoomScreen(),
     Myprofile(),

   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        backgroundColor:  Color(0XFFD6D4C9),
        onTap: (Currentindex){
          setState(() {
            currentindex=Currentindex;
          });



        },



        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "menue"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
      ],

      ),
      body: Screens[currentindex],
    );
  }
}
