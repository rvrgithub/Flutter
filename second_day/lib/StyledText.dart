import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  // 1- const StyledText(String text, {super.key}) : outPutText = text;
  //2-  String outPutText;   // alternate method.
  final String text;
  @override
  Widget build(context) {
    return Text(
      // 3- outPutText,
      text,
      style: const TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
