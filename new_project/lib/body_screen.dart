import 'package:flutter/material.dart';
import "package:new_project/splash_screen.dart";

// import 'package:new_project/body_screen.dart';
class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  List splashData = [
    {
      "text": "Welcomze to Tokoto, Let’s shop!",
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
    },
  ];

  int nextIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() => nextIndex = value);
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) {
                      return SplashScreen(
                          text: splashData[index]["text"],
                          image: splashData[index]['image']);
                    })),
            // Expanded(
            //   flex: 1,
            //   child: PageView.builder(
            //       onPageChanged: (value) {
            //         setState(() => nextIndex = value);
            //       },
            //       itemCount: splashData.length,
            //       itemBuilder: (context, index) => Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Image.network(
            //                 "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
            //                 height:
            //                     800, // Set an appropriate height for your image
            //                 width:
            //                     200, // Set an appropriate width for your image
            //               ),
            //               SizedBox(
            //                   height:
            //                       20), // Add spacing between the image and text
            //               Text(
            //                 "${splashData[index]['text']}",
            //                 style: TextStyle(
            //                   fontSize: 18,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ],
            //           )),
            // ),

            Expanded(
              child: ElevatedButton(
                // style: style,
                onPressed: () {},
                child: const Text('Enabled'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
