import'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
      child:Scaffold(
        backgroundColor:Colors.blue,
        body:Text("i love coding",style:TextStyle(fontSize:30))
      )
      )
    );
  }
}
