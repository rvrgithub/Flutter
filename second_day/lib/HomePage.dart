import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 3;
  final String name = "HelloMoto";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor:Colors.blue,
        backgroundColor:Color.fromARGB(255,47,5,120),
        drawerScrimColor: Colors.black45,
        body: Container(
          decoration: const BoxDecoration(
            gradient:LinearGradient(
              colors: [Color(0xFFCBC4C4),
              Color.fromARGB(225, 45, 7, 98)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              )
               ),
          child:  const Center(
            child:   Text("welmcom To Child ",
              style:  TextStyle(
              color: Colors.white,
              fontSize: 30
              ),
            ),
            ),
        ),
      ),
    );
  }
}
