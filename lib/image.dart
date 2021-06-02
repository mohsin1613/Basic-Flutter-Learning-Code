import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Image.asset(
          "images/asset.webp",
          height: 200,
          width: 200,
        ),
      ),
    ));
  }
}
