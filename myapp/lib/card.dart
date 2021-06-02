import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Card(
            elevation: 20,
            ///deepness of showing .
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
                /// borderRadius:BorderRadius.only(bottomLeft:Radius.circular(50))
                ),
            child: Container(height: 200, width: 200),
          ),
        ),
      ),
    );
  }
}
