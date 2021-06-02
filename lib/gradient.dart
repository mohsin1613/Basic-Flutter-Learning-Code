import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: SweepGradient(
                  ///begin:Alignment.center,   for linearGradient
                    ///end:Alignment.bottomLeft, for linearGradient
                    colors: [Colors.yellow, Colors.green, Colors.blue],
                    stops: [0.1, 0.6, 0.9 ] ///radius of colors and concentrics colors
                ),
              ),
            ),
          ),
        ));
  }
}
