import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/data_model.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  List<DataModel> listData = [];

  Future<List<DataModel>> getData() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    final data = jsonDecode(response.body.toString());
    print(data);
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        listData.add(DataModel.fromJson(i));
      }
      return listData;
    } else {
      return listData;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: FutureBuilder(
          future: getData(),
          builder: ((context, snapshot) {
            if (!snapshot.hasData) {
              return Text("Loading......");
            } else {
              return ListView.builder(
                  itemCount: listData.length, //20
                  itemBuilder: (context, index) {
                    return Card(
                      child: Text(listData[index].body.toString()),
                    );
                  });
            }
          })),
    )));
  }
}
