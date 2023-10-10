import 'package:flutter/material.dart';
import 'package:new_project/body_screen.dart';
import 'package:new_project/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: "New Project",
    debugShowCheckedModeBanner:false,
      initialRoute: "/signup",
      routes: {
        "/": (context) => BodyScreen(),
        "/signup": (context) => SignupPage(),
      },
      //  home: Scaffold(
      //     appBar: AppBar(title: Text("Slider")),
      //     body: BodyScreen(),
      //   ));

      // home: BodyScreen(),
    );
  }
}
