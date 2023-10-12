import 'package:flutter/material.dart';
import 'package:new_project/body_screen.dart';
import 'package:new_project/sign_up.dart';
import 'package:new_project/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: "",
      debugShowCheckedModeBanner: false,
      initialRoute: "/products",
      routes: {
        "/": (context) => BodyScreen(),
        "/signup": (context) => SignupPage(),
        "/products": (context) => ProductPage(),
      },
      //  home: Scaffold(
      //     appBar: AppBar(title: Text("Slider")),
      //     body: BodyScreen(),
      //   ));

      // home: BodyScreen(),
    );
  }
}
