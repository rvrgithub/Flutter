import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SlidCards extends StatefulWidget {
  const SlidCards({super.key});

  @override
  State<SlidCards> createState() => _SlidCardsState();
}

class _SlidCardsState extends State<SlidCards> {
  List SplashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("slide Cards"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                    itemCount: SplashData.length,
                    itemBuilder: (context, index) {
                      return ScreenCards(
                        text: SplashData[index]['text'],
                        image: SplashData[index]['image'],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class ScreenCards extends StatelessWidget {
  final String text;
  final String image;

  ScreenCards({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
  children: [
    Text(text),
    Image.asset(image)
  ],
    );
  }
}
