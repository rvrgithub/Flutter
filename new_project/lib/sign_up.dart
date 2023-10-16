import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
              child: Text("SIGN UP",
                  style: TextStyle(
                    color: Color.fromARGB(255, 49, 48, 48),
                  ))),
          backgroundColor: Colors.white,
          iconTheme:
              IconThemeData(color: const Color.fromARGB(255, 61, 60, 60)),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text("Complete Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 12, 40, 12),
                    child: Text(
                      "Comepter Your details or contact or continue with social media social media",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 55, 55, 55),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextField(
                      decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 82, 82, 81)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 74, 74, 72)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 97, 97, 96)),
                    ),
                  )),
                  SizedBox(height: 30),
                  TextField(
                      decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 82, 82, 81)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 74, 74, 72)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 97, 97, 96)),
                    ),
                  )),
                  SizedBox(height: 30),
                  TextField(
                      decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 82, 82, 81)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 74, 74, 72)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 97, 97, 96)),
                    ),
                  )),
                  SizedBox(height: 30),
                  TextField(
                      decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 82, 82, 81)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 74, 74, 72)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 97, 97, 96)),
                    ),
                  )),
                  SizedBox(height: 40),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 243, 184, 8),
                        padding: EdgeInsets.all(8.0),
                        textStyle: TextStyle(
                          fontSize: 21.0, // Text font size
                        ),
                        minimumSize: Size(300, 0),
                      ),
                      child: Text("Continue"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      }),
                  SizedBox(height: 20),
                  Text(
                    "Comepter Your details or contact or continue with social media social media",
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 55, 55, 55),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
