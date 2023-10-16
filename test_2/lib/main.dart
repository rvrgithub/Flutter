import 'package:flutter/material.dart';
import 'package:test_2/drawer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int current = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text("Drawer...")),
        drawer: DrawerTest(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: current,
            onTap: (index) {
              print(index);
              setState(() {
                current = index;
                print(current);
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
            ]),
      ),
    );
  }
}
