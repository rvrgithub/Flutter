import 'package:flutter/material.dart';
import 'package:new_project/draw_er.dart';
import 'package:new_project/bottom_drawer.dart';
import 'package:new_project/sign_up.dart';
import 'package:new_project/first_screen.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;
  final List<Widget> _screens = [
    
    SignupPage(),
    FirstScreen(),
    SignupPage(),
  ];  
   void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product page...")),
      drawer: Drawer_side(),
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
        ]),
    );
  }
}

// Padding(
//         padding: const EdgeInsets.fromLTRB(20, 70, 10, 10),
//         child: Center(
//             child: Column(children: [
//           Container(
//             width: double.infinity,
//             height: 60,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//               child: Center(
//                 child: Row(children: [
//                   Column(children: [
//                     Text(
//                       "New /Product",
//                       textAlign: TextAlign.center
//                     ),
//                   ]),
//                   Column(children: [Text("hello")]),
//                 ]),
//               ),
//             ),
//           ),
//         ])),
      