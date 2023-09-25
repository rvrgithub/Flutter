// import "package:flutter/material.dart";

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Home Page"),
//         ),
//         body:Container(child: Center(
//           child: Column(children: [
//             Text("home page data"),
//             FloatingActionButton(onPressed: (){
//               print("click me!!");

//             },child: Icon(Icons.add),
//             ),
//              ElevatedButton(onPressed: () {}, child: Icon(Icons.favorite)),
//                   Slider(
//                       value: 0.1,
//                       onChanged: (value) {
//                         print(value);
//                       }),
//                   Switch(
//                       value: false,
//                       onChanged: (value) {
//                         print(value);
//                       }),

//           ]),

//         )) ,
//       ),
//     );
//   }
// }

// ..............

import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/api_call_data.dart';
import 'package:flutter_application_1/check_box.dart';
import 'package:flutter_application_1/form_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/text_form.dart';
import 'package:flutter_application_1/stack_widget.dart';
import 'package:flutter_application_1/rivision_all.dart';
import 'package:flutter_application_1/api_call.dart';

// import 'packege:flutter_application_1/about_page.dart';
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
      initialRoute: "/newApiCall",
      routes: {
        "/": (context) => HomePage(),
        "/about": (context) => AboutPage(),
        "/form": (context) => FormPage(),
        "/newform": (context) => NewForm(),
        "/stack": (context) => StackWidget(),
        "/check_box": (context) => CheckBox(),
        '/rivision': (context) => Rivision(),
        '/apicall': (context) => ApiScreen(),
        '/newApiCall':(context)=> MyApiCall()
      },
    );
  }
}