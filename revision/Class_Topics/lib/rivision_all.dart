import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Rivision extends StatefulWidget {
  const Rivision({super.key});
  @override
  State<Rivision> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Rivision> {
  String? radioValue = "";
  String? dropDownV = "defualt value";
  List<String> checkBox = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reminder_All"),
      ),
      body: Container(
          // child: Drawer(
          //   child: Column(
          //     children: [
          //       UserAccountsDrawerHeader(
          //           accountName: Text("Hello..."),
          //           accountEmail: Text("abc@gmail.com")),
          //     ],
          //   ),
          // ),

          child: Center(
        child: Column(
          children: [
            RadioListTile(
                value: "radio1",
                groupValue: radioValue,
                title: Text("fgdf"),
                onChanged: (String? value) {
                  setState(() {
                    radioValue = value;
                  });
                }),
            RadioListTile(
                value: "radio2",
                groupValue: radioValue,
                title: Text("fgdfdsd"),
                onChanged: (String? value) {
                  setState(() {
                    radioValue = value;
                  });
                })

            //  ..............check box
            ,
            CheckboxListTile(
                value: checkBox.contains("list1"),
                title: const Text("asjfksd"),
                onChanged: (bool? value) {
                  setState(() {
                    if (value != null && value) {
                      checkBox.add("list1");
                    } else {
                      checkBox.remove("list1");
                    }
                  });
                }),
            DropdownButton(
                value: dropDownV,
                items: [
                  DropdownMenuItem(
                    child: Text("aaa"),
                    value: "defualt value",
                  ),
                  DropdownMenuItem(
                    child: Text("bbb"),
                    value: "bbb",
                  ),
                  DropdownMenuItem(
                    child: Text("ccc"),
                    value: "ccc",
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    dropDownV = value;
                  });
                })
          ],
        ),
      )),
    );
  }
}
//30  147    