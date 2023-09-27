import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Tab"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text("Left"),
                  ),
                  Tab(
                    child: Text("Center"),
                  ),
                  Tab(
                    child: Text("Right"),
                  ),
                ],
              ),
            ),
            body: const Center(
                child: TabBarView(
              children: [
                Center(
                  child: Text("left"),
                ),
                Center(
                  child: Text("center"),
                ),
                Center(
                  child: Text("right"),
                ),
              ],
            ))));
  }
}
