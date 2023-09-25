import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewForm extends StatefulWidget {
  const NewForm({super.key});

  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  final _formKey = GlobalKey<FormState>();
  final _userName = TextEditingController();
  final _userEmail = TextEditingController();
  final _userPhone = TextEditingController();



  void _submitForm(){
    if (_formKey.currentState?.validate() ?? true) {
      print("Succes!!..");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Form ..."),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _userName,
                  decoration: InputDecoration(
                      label: Text("Enter Your Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Enter Your Name..";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                   controller: _userEmail,
                  decoration: InputDecoration(
                      label: Text("Enter Your Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Enter Your Email..";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                   controller: _userPhone,
                  decoration: InputDecoration(
                      label: Text("Enter Your Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Enter Your Name..";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _submitForm,
                    child: Text("Submit"))
              ],
            )),
      ),
    );
  }
}
