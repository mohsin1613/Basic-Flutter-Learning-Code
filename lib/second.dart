import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Hero(
            tag: "ADD",
            child: Icon(
              Icons.add_a_photo,
              size: 250,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
