import 'package:flutter/material.dart';

class BikePage extends StatelessWidget {
  const BikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 300,
          child: Image.network("https://etimg.etb2bimg.com/photo/57203645.cms"),
          decoration: BoxDecoration(
              // color: Colors.amber,
              // border: Border.all(width: 1, style: BorderStyle.solid)
              ),
        ),


         Container(
          width: 200,
          height: 200,
        
          child: Image.network("https://images.unsplash.com/photo-1591637333184-19aa84b3e01f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
          decoration: BoxDecoration(
            // top:30,
              // color: Colors.amber,
              // border: Border.all(width: 1, style: BorderStyle.solid)
              ),
        ),


         Container(
          width: 100,
          height: 100,
          // margin:20,
          child: Image.network("https://images.unsplash.com/photo-1591378603223-e15b45a81640?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
          decoration: BoxDecoration(
              // color: Colors.amber,
              // border: Border.all(width: 1, style: BorderStyle.solid)
              ),
        ),


        //  Container(
        //   width: 200,
        //   height: 150,
        //   child: Image.network("https://etimg.etb2bimg.com/photo/57203645.cms"),
        //   decoration: BoxDecoration(
              // color: Colors.amber,
        //       border: Border.all(width: 1, style: BorderStyle.solid)),
        // ),
      ],
    );
  }
}
