import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/data_model.dart';
import 'package:flutter_application_1/new_data.dart';
import 'package:http/http.dart' as http;

class MyApiCall extends StatefulWidget {
  const MyApiCall({super.key});

  @override
  State<MyApiCall> createState() => _MyApiCallState();
}

class _MyApiCallState extends State<MyApiCall> {
  List<Autogenerated> listdata = [];

  Future<List<Autogenerated>> getData() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    final data = jsonDecode(response.body.toString());
    print(data);
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        listdata.add(Autogenerated.fromJson(i));
      }
      return listdata;
    } else {
      return listdata;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Api Call..."),
        ),
        body: Center(
            child: FutureBuilder(
                future: getData(),
                builder: ((context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text("Loading.....");
                  } else {
                    return ListView.builder(
                        itemCount: listdata.length,
                        itemBuilder: ((context, index) {
                          return Card(
                            child: Text(listdata[index].body.toString()),
                          );
                        }));
                  }
                }))),
      ),
    );
  }
}