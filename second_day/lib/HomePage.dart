import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 3;
  final String name = "HelloMoto";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(child: Text("welmcom To Child $day  $name")),
      ),
    );
  }
}
