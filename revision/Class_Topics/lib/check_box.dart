import "package:flutter/material.dart";

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  List<String> checkArray = [];
  String? radioItem = "";
  String? dropDown = "defualt Value";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("check_box"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Check Box 1"),
          CheckboxListTile(
            value: checkArray.contains("List_1"),
            onChanged: (bool? value) {
              setState(() {
                print(value);
                if (value != null && value) {
                  checkArray.add("List_1");
                  print(checkArray);
                } else {
                  checkArray.remove("List_1");
                  print(checkArray);
                }
              });
            },
            title: const Text("List_1"),
          ),
          CheckboxListTile(
            value: checkArray.contains("List_2"),
            onChanged: (bool? value) {
              setState(() {
                print(value);
                if (value != null && value) {
                  checkArray.add("List_2");
                  print(checkArray);
                } else {
                  checkArray.remove("List_2");
                  print(checkArray);
                }
              });
            },
            title: const Text("List_2"),
          ),
          CheckboxListTile(
            value: checkArray.contains("List_3"),
            onChanged: (bool? value) {
              setState(() {
                print(value);
                if (value != null && value) {
                  checkArray.add("List_3");
                  print(checkArray);
                } else {
                  checkArray.remove("List_3");
                  print(checkArray);
                }
              });
            },
            title: const Text("List_3"),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Radio Button"),
          SizedBox(
            height: 20,
          ),
          RadioListTile(
              value: "radio_1",
              title: Text("Raadio _1"),
              groupValue: radioItem,   //
              onChanged: (String? value) {
                setState(() {
                  radioItem = value;
                });
              }),
          RadioListTile(
              value: "radio_2",
              title: Text("Raadio _2"),
              groupValue: radioItem, //
              onChanged: (String? value) {
                setState(() {
                  radioItem = value;
                });
              }),
          RadioListTile(
              value: "radio_3",
              title: Text("Raadio _3"),
              groupValue: radioItem,  //{item1:false,item2:false,item3:true}
              onChanged: (String? value) {
                setState(() {
                  radioItem = value;
                });
              }),
          SizedBox(
            height: 20,
          ),
          Text("Drop Down!!"),
          DropdownButton( //select
            value: dropDown, //selected value
            items: [
               DropdownMenuItem( //options
                child: Text("Default"),
                value: "defualt Value",
              ),
              DropdownMenuItem(
                child: Text("Option2"),
                value: "Option 1",
              ),
              DropdownMenuItem(
                child: Text("Option3"),
                value: "Option 2",
              )
            ],
            onChanged: (value) {
              setState(() {
                print(value);
                dropDown = value;
              });
            },
          ),
        ],
      )),
    );
  }
}
