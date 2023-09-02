// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer_nav.dart';
import 'package:flutter_application_1/counter_btn.dart';

// import "package:h"
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new home page..."),
      ),
      body: CounterBtn(),
      drawer: DrawerNav(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) {
          setState(() => {current = index});
          print("hello !! ... ");
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home Page.."),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), label: "about page ...")
        ],
      ),
    );
  }
}
