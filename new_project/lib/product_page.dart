import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 120, 10, 10),
              child: Center(
                child: Row(children: [
                  Column(children: [
                    Text(
                      "New /Product",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  Column(children: [Text("hello")]),
                ]),
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
