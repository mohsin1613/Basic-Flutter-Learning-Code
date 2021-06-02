import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton:
                FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            body: Center(
                child: Stack(
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: <Widget>[
                  Container(height: 200, width: 200, color: Colors.amberAccent),
                  Positioned(
                    ///bottom:-50, stack holo container . er upore jete thkbe seta holo position .
                    child: CircleAvatar(radius: 50),
                  ),
                ]))));
  }
}
