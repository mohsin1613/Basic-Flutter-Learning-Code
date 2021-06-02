import 'package:Myapp/four.dart';
import 'package:Myapp/three.dart';
import 'package:Myapp/two.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'one.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final pages = [One(), Two(), Three(), Four()];
  var pg = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            color: Colors.blue,
            buttonBackgroundColor: Colors.yellow,
            backgroundColor: Colors.green,
            animationCurve: Curves.bounceInOut,
            animationDuration: Duration(milliseconds: 100),
            onTap: (index) {
             setState((){
               pg=index;
             });
            },
            items: [
              Icon(Icons.comment),
              Icon(Icons.phone_bluetooth_speaker),
              Icon(Icons.apps),
              Icon(Icons.android),
              Icon(Icons.format_list_bulleted),
              Icon(Icons.alarm),
            ]),
        body:pages[pg],
      ),
    );
  }
}
