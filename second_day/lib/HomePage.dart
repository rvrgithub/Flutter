import 'package:flutter/material.dart';
import 'package:second_day/StyledText.dart';

const  startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomRight;

class HomePage extends StatelessWidget {
  final int day = 3;
  final String name = "HelloMoto";

  @override // metadata.......
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor:Colors.blue,
        backgroundColor: Color.fromARGB(255, 47, 5, 120),
        drawerScrimColor: Colors.black45,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFCBC4C4),
              Color.fromARGB(225, 45, 7, 98),
              Color.fromARGB(255, 47, 5, 20)
            ],
            begin: startAlignment,
            end: endAlignment,
          )),
          child: const Center(child: StyledText()),
        ),
      ),
    );
  }
}




// contructor ...
// GardientContainer({key}):super(key:key) 
// ALTERNATE METHOD 
// GardientContainer({super.key});
