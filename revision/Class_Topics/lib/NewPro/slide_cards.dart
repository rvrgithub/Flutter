import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SlidCards extends StatefulWidget {
  const SlidCards({super.key});

  @override
  State<SlidCards> createState() => _SlidCardsState();
}

class _SlidCardsState extends State<SlidCards> {
  int countPageSlide = 0;
  List SplashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTFrhr_-pYR74jUgOy7IerAoHAX3zPIZZcg&usqp=CAU"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "https://th.bing.com/th/id/OIG.I0ECVEO23Se1w51XSTd3"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image":
          "https://www.akamai.com/site/im-demo/perceptual-standard.jpg?imbypass=true"
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
                    onPageChanged: (value) {
                      print(["value",value]);
                      setState(() {
                        countPageSlide = value;
                      });

                      print(["countPageSlide", countPageSlide]);
                    },
                    itemCount: SplashData.length,
                    itemBuilder: (context, index) {
                      return ScreenCards(
                        text: SplashData[index]['text'],
                        image: SplashData[index]['image'],
                      );
                    })),
            // Spacer(),
            Expanded(child: Container(color: Colors.green)),
            // Expanded(
            //     child: Container(
            //   color: Colors.orange,
            // )),
          ],
        ),
      ),
    );
  }
}

class ScreenCards extends StatelessWidget {
  final String text;
  final dynamic image;

  ScreenCards({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(text), Image.network(image)],
    );
  }
}
