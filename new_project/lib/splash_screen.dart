import "package:flutter/material.dart";

class SplashScreen extends StatelessWidget {
  final String text;
  final String image;
  SplashScreen({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        Text(
          "New Project",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        Text(text),
        Spacer(),
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height * .4,
        )
      ],
    );
  }
}
