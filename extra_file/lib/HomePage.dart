import 'package:flutter/material.dart';
import 'package:second_day/StyledText.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomRight;

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  HomePage(this.color1, this.color2, {super.key});
  Color color1;
  Color color2;
  final int day = 3;
  final String name = "HelloMoto";

  var diceImageChange = 'assets/images/image2.jpg';
  void rollDice() {
    diceImageChange = 'assets/images/image1.jpg';
    print("changing images....");
  }

  @override // metadata.......
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor:Colors.blue,
        backgroundColor: const Color.fromARGB(255, 47, 5, 120),
        drawerScrimColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // colors:
            //[ Color(0xFFCBC4C4),
            // Color.fromARGB(225, 45, 7, 98),
            // Color.fromARGB(255, 47, 5, 20)]
            colors: [color1, color2],
            begin: startAlignment,
            end: endAlignment,
          )),
          child: Center(
              // child: StyledText("WelCome To Child ")
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                diceImageChange,
                width: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  child: const Text('create a new button'))
            ],
          )),
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   // const HomePage({super.key});
//   const HomePage({super.key, required this.colors});
//   final List<Color> colors;
//   final int day = 3;
//   final String name = "HelloMoto";

//   @override // metadata.......
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // backgroundColor:Colors.blue,
//         backgroundColor: Color.fromARGB(255, 47, 5, 120),
//         drawerScrimColor: Colors.black,
//         body: Container(
//           decoration:  BoxDecoration(
//               gradient:  LinearGradient(
//             // colors:
//               //[ Color(0xFFCBC4C4),
//               // Color.fromARGB(225, 45, 7, 98),
//               // Color.fromARGB(255, 47, 5, 20)]
//               colors:  colors,
//             begin: startAlignment,
//             end: endAlignment,
//           )),
//           child: Center(child: StyledText("welmcom To Child ")),
//         ),
//       ),
//     );
//   }
// }

// contructor ...
// GardientContainer({key}):super(key:key)
// ALTERNATE METHOD
// GardientContainer({super.key});
