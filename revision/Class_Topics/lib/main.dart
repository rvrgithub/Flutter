import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/ApiCall/api_call_data.dart';
import 'package:flutter_application_1/check_box.dart';
import 'package:flutter_application_1/extr_a.dart';
import 'package:flutter_application_1/form_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/TabScreen/tabBar_screen.dart';
import 'package:flutter_application_1/TabScreen/inside_tabScreen.dart';
import 'package:flutter_application_1/text_form.dart';
import 'package:flutter_application_1/stack_widget.dart';
import 'package:flutter_application_1/rivision_all.dart';
import 'package:flutter_application_1/Route/first_page.dart';
import 'package:flutter_application_1/Route/second_page.dart';
import 'package:flutter_application_1/Route/third_page.dart';
import 'package:flutter_application_1/NewPro/Slide_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "new page",
      initialRoute: "/slideCards",
      routes: {
        "/": (context) => HomePage(),
        "/about": (context) => AboutPage(),
        "/form": (context) => FormPage(),
        "/newform": (context) => NewForm(),
        "/stack": (context) => StackWidget(),
        "/check_box": (context) => CheckBox(),
        '/rivision': (context) => Rivision(),
        '/newApiCall': (context) => MyApiCall(),
        '/tabBarScreen': (context) => TabBarScreen(),
        '/insideTabScreen': (context) => InsideTabScreen(),
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        "/extra": (context) => Extra(),
        "/slideCards": (context) => SlidCards(),
      },
    );
  }
}
