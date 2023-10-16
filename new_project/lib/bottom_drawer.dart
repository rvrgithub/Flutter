import 'package:flutter/material.dart';

class BottomNavigationDrawer extends StatefulWidget {
  const BottomNavigationDrawer({super.key});

  @override
  State<BottomNavigationDrawer> createState() => _BottomNavigationDrawerState();
}

class _BottomNavigationDrawerState extends State<BottomNavigationDrawer> {

  
   int currentIndex = 0;

 

  void _onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "product"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "login"),
        ]);
  }
}
