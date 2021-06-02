import 'package:flutter/material.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.greenAccent,
      body:Center(
        child:Text("This is one open one page!",style: TextStyle(fontWeight:FontWeight.bold),)
      )
    );
  }
}
