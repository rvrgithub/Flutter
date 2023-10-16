import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Text("Car 1"),
                    Image.network(
                      "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-129-641a1d51daa1d.jpg?crop=0.767xw:0.834xh;0.102xw,0.0997xh&resize=980:*",
                      height: 100,
                      // fit: BoxFit.contain
                    )
                  ],
                ),
              ),
              // color: Colors.amber,
              // width: 270,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 234, 239),
                // margin: EdgeInsetsGeometry(10),
                border: Border.all(
                  color: const Color.fromARGB(221, 52, 51, 51),
                  width: .4,
                  style: BorderStyle.solid,
                ),

                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: const Color.fromARGB(255, 190, 188, 188),
                      spreadRadius: 10),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          SizedBox(height: 30),
             Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Text("Car 1"),
                    Image.network(
                      "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1440",
                      height: 100,
                      // fit: BoxFit.contain
                    )
                  ],
                ),
              ),
              // color: Colors.amber,
              // width: 270,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 216, 249),
                // margin: EdgeInsetsGeometry(10),
                border: Border.all(
                  color: const Color.fromARGB(221, 52, 51, 51),
                  width: .4,
                  style: BorderStyle.solid,
                ),

                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Color.fromARGB(255, 232, 224, 224),
                      spreadRadius: 10),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Text("Car 1"),
                    Image.network(
                      "https://img.freepik.com/premium-photo/color-blue-green-american-luxury-classic-muscle-car-mustang-free-download-images_63106-1544.jpg",
                      height: 100,
                      // fit: BoxFit.contain
                    )
                  ],
                ),
              ),
             
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 234, 239),
                // margin: EdgeInsetsGeometry(10),
                border: Border.all(
                  color: Color.fromARGB(221, 107, 105, 105),
                  width: .4,
                  style: BorderStyle.solid,
                ),

                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Color.fromARGB(255, 236, 232, 232),
                      spreadRadius: 10),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
