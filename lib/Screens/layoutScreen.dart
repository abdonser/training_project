import 'package:flutter/material.dart';
import 'package:task_5/Screens/setting.dart';

import 'home.dart';
import 'hoomscreen.dart';
import 'notification.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int CurrentIndex = 0;

  List<Widget> Screens = [HoomScreen(), notification(), Setting(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,

        unselectedItemColor: Colors.black,

        onTap: (currentIndex){
          setState(() {
            CurrentIndex=currentIndex;
          });

        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.orange,),label: "",),
        ],
      ),
    );
  }
}
