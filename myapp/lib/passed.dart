import 'package:flutter/material.dart';

class  page extends StatelessWidget {
  String st;
  page({this.st});  ///this is constructor of dart language with this indicator.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text(st,style:TextStyle(fontSize: 20 ,color: Colors.green))
      ),
    );
  }
}
