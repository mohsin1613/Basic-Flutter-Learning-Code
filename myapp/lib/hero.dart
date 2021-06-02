import 'package:Myapp/second.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CircleAvatar(
        radius: 50,
        child: GestureDetector(
          child: Hero(
            tag: "ADD",
            child: Icon(Icons.add_a_photo, size: 50),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Second()));
          },
        ),
      ),
    ));
  }
}
