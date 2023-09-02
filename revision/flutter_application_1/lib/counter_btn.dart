import "package:flutter/material.dart";

class CounterBtn extends StatefulWidget {
  const CounterBtn({super.key});

  @override
  State<CounterBtn> createState() => _CounterBtnState();
}

class _CounterBtnState extends State<CounterBtn> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("create counter buton")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 20,
                  right: 40,
                  bottom: 20,
                ),
                child: Text(
                  'Text ${count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Row(children: [
                SizedBox(width: 140),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 243, 53, 10),
                    size: 35.0,
                  ),
                ),
                SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Icon(
                    Icons.remove ,
                    color: Color.fromARGB(255, 243, 53, 10),
                    size: 35.0,
                  ),
                ),
              ]),
            ]),
      ),
    );
  }
}
