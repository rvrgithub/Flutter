import 'package:flutter/material.dart';


class LandPage extends StatefulWidget {
  const LandPage({super.key});
  @override
  State<LandPage> createState() => _LandPageState();
}


class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Land Page ..."),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                        "https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg",
                        height: 30),
                    SizedBox(width: 10),
                    Text("Flutter",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Event",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 249, 170, 52)))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.add_alert_outlined,
                        size: 30, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.menu, size: 30, color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Radhika",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text("Let's explore what's happening nearby ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2017/03/01/22/18/avatar-2109804_1280.png',
                                width: 50,
                                height: 50)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "Sun",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color:Colors.orange
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "10",
                              style: TextStyle(fontSize: 17,color:Colors.black),
                            ),
                            Text(
                              "Sun",
                              style: TextStyle(fontSize: 17,color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    )
                   
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "Sun",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "Sun",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "Sun",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "Sun",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                child: Text("AllEvents", style: TextStyle(fontSize: 30),textAlign: TextAlign.start,)),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.mic, size: 30, color: Colors.white38),
                          Text(
                            'Connect',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ],
                      ),
                      height: 100,
                      width: 100,
                      color: Colors.white10,

                      // borderRadius: BorderRadius.circular(50.0),
                    ),
                  ],
                ),
                // SizedBox(
                //       width: 20,
                //     ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.mic, size: 30, color: Colors.white38),
                            Text(
                              'Connect',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                      height: 100,
                      width: 100,
                      color: Colors.white10,
                      

                      // borderRadius: BorderRadius.circular(50.0),
                    ),
                  ],
                ),
                // SizedBox(width: 20,),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.mic, size: 30, color: Colors.white38),
                          Text(
                            'Connect',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ],
                      ),
                      height: 100,
                      width: 100,
                      color: Colors.white10,

                      // borderRadius: BorderRadius.circular(50.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  "Popular Events",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.start,
                )),
          ),

          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sports Meating Galaxy  ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold ),
                          ),
                          SizedBox(height: 5,),
                          Row( 
                            children: [
                              Icon(Icons.menu_book_sharp,
                                  size: 20, color: Colors.white),
                                  SizedBox(width: 5,),
                              Text("Sep 09 2023" ,
                                style: TextStyle(
                                    fontSize: 19),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_city,
                                  size: 20, color: Colors.white),
                                  SizedBox(
                                width: 5,
                              ),
                              Text("Location , Haryana , Rewari",
                                style: TextStyle(
                                    fontSize: 19),
                              )
                            ],
                          )
                        ],
                      ),
                      Image.network(
                        "https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg",
                        height: 100,
                        width: 100,
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
