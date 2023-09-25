import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack Widget"),
        ),
        body: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    color: Colors.red,
                  ),
                  Container(
                    width: 170,
                    height: 170,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Table(
                border: TableBorder.symmetric(
                    inside: BorderSide(
                  width: 3,
                  color: Colors.grey,
                )),
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Text("Heading1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Color.fromARGB(255, 176, 92, 53),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("Heading1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: Color.fromARGB(255, 176, 92, 53),
                            ))),
                    TableCell(
                        child: Text("Heading1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                backgroundColor: Colors.blue[200]))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200])))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200])))
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200]))),
                    TableCell(
                        child: Text("row_1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 61, 53, 176),
                                backgroundColor: Colors.blue[200])))
                  ]),
                ])
          ],
        ));
  }
}
