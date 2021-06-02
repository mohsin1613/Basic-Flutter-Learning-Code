import 'dart:ui';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
              alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
          child: Container(
            color: Colors.blue.withOpacity(0.1)
          ),
        )
      ],
    )));
  }
}
