import 'package:flutter/material.dart';
import 'package:test_2/sign_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  String? radioValue = "";
  List<String> checkBox = [];
  String? dropDownValue = "dafualt value";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Test Time"),
      //   ),
        // body: Container(
        //   child: Column(
        //     children: [
        //       RadioListTile(
        //           value: "Radio1",
        //           title: Text("Radio Btn 1"),
        //           groupValue: radioValue,
        //           onChanged: (String? value) {
        //             setState(() {
        //               radioValue = value;
        //             });
        //           }),
        //       RadioListTile(
        //           value: "Radio2",
        //           title: Text("Radio Btn 2"),
        //           groupValue: radioValue,
        //           onChanged: (String? value) {
        //             setState(() {
        //               radioValue = value;
        //               radioValue = value;
        //             });
        //           }),
        //       RadioListTile(
        //           value: "Radio3",
        //           title: Text("Radio Btn 3"),
        //           groupValue: radioValue,
        //           onChanged: (String? value) {
        //             setState(() {
        //               radioValue = value;
        //             });
        //           }),
        //       CheckboxListTile(
        //           value: checkBox.contains("list_1"),
        //           title: Text("check_1 value"),
        //           onChanged: (bool? value) {
        //             setState(() {
        //               if (value != null && value) {
        //                 checkBox.add("list_1");
        //               } else {
        //                 checkBox.remove("list_1");
        //               }
        //             });
        //           }),
        //       CheckboxListTile(
        //           value: checkBox.contains("list_2"),
        //           title: Text("check_2 value"),
        //           onChanged: (bool? value) {
        //             setState(() {
        //               if (value != null && value) {
        //                 checkBox.add("list_2");
        //               } else {
        //                 checkBox.remove("list_2");
        //               }
        //             });
        //           }),
        //       DropdownButton(
        //           value: dropDownValue,
        //           items: [
        //             DropdownMenuItem(
        //               child: Text("value_1"),
        //               value: "dafualt value",
        //             ),
        //             DropdownMenuItem(
        //               child: Text("value_2"),
        //               value: "value2",
        //             ),
        //             DropdownMenuItem(
        //               child: Text("value_2"),
        //               value: " value2",
        //             )
        //           ],
        //           onChanged: (String? value) {
        //             setState(() {
        //               dropDownValue = value;
        //             });
        //           }),
        //     ],
        //   ),
        // ),
        
        
        // drawer: Drawer(
        //   child: Column(
        //     children: [
        //       UserAccountsDrawerHeader(
        //           accountName: Text("Hola Nina.."),
        //            accountEmail: Text("nina@gmail.com")),
        //       ListTile(title: Text("home"),
        //       //  leading: Icon(Icons.home_filled)
        //       ),
        //     ],
        //   ),
        // ),

        initialRoute: '/sign_page',
        routes: {
          "/sign_page": (content)=> SignPage(),
          }
      // ),
    );
  }
}
