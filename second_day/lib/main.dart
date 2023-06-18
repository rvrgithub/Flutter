import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final int day = 3;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage( const Color.fromARGB(225, 45, 7, 98),
            const Color.fromARGB(255, 47, 5, 20)),
    );
  }
}
