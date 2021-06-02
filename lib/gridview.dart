import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
            crossAxisCount: 2,
            ///koyta grid per axis a
            crossAxisSpacing: 10,
            /// spaceing in conatiner
            mainAxisSpacing: 10,
            ///axis gular modde spacing dey.
            children: <Widget>[
              Container(height: 200, width: 200, color: Colors.lightBlue),
              Container(height: 200, width: 200, color: Colors.deepPurpleAccent),
              Container(height: 100, width: 100, color: Colors.redAccent),
              Container(height: 50, width: 50, color: Colors.green)
            ]),
      ),
    ));
  }
}
