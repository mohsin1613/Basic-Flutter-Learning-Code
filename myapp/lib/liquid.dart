import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(color: Colors.green),
      Container(color: Colors.yellow),
      Container(color: Colors.deepOrange),
      Container(color: Colors.black)
    ];
    return MaterialApp(
        home: Scaffold(
      body: LiquidSwipe(pages: pages),
    ));
  }
}
