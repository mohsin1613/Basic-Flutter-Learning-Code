import 'package:Myapp/passed.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var name="this is mohsin hossain";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body:Center(
          child: RaisedButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>page(st:name) ));
          },color: Colors.red,child:Text("Button"),)
        )
      )
    );
  }
}



    