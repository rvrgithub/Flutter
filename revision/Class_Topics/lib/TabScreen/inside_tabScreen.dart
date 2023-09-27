import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InsideTabScreen extends StatefulWidget {
  const InsideTabScreen({super.key});

  @override
  State<InsideTabScreen> createState() => _InsideTabScreenState();
}

class _InsideTabScreenState extends State<InsideTabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 214, 113, 243),
              child: TabBar(tabs: [
                Tab(
                  child: Text("Left.."),
                ),
                Tab(
                  child: Text("Center.."),
                ),
                Tab(
                  child: Text("Right.."),
                ),
              ]),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .9,
            color: Color.fromARGB(255, 152, 204, 246),
            child: TabBarView(children: [
              Center(
                child: Text("Left..."),
              ),
              Center(
                child: Text("Center.."),
              ),
              Center(
                child: Text("Right..."),
              ),
            ]),
          )
        ])));
  }
}
