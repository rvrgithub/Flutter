import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nye New App",
      home: HomePage(),
      theme: ThemeData(
          primaryColor: Colors.green,
          brightness: Brightness.light,
          accentColor: Colors.red),
    );
  }
}

// .. create state ...
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//  class function .....
class _HomePageState extends State<HomePage> {
  @override

  // ... string ..
  String myText = "Hello !! Im Here ....";
  // create a function ...

  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Welcome To My Page";
      } else {
        myText = "Hello !! Im Here ....";
      }
    });
  }

// ... create sapreate widgets ...

  Widget _bodyWidget() {
    // return const Center(child: Text("fdhhfdjlg hf jfgfgflg",
    // style:  TextStyle(color:Colors.red),
    // ),);

    // ..................
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            myText,
            style: const TextStyle(fontSize: 30.0, color: Colors.green),
          ),
          // FloatingActionButton(onPressed: _changeText)
          OutlinedButton(
            // focusNode: FocusNode(canRequestFocus: bool(Action)),
            child: Text(
              "Click",
              style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  backgroundColor: Colors.red),
            ),
            onPressed: _changeText,
            // style: const ButtonStyle(backgroundColor:),
            style: TextButton.styleFrom(
                foregroundColor: Colors.green, iconColor: Colors.red),
          )
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Toggle Button",style: TextStyle(
          // backgroundColor: Colors.orange, 
          fontSize: 22
        ),),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add, 
          color: Colors.white,
        ),
        onPressed: _changeText,
        backgroundColor: Colors.red,
        // focusColor: Colors.yellow,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 94),
    );
  }
}
