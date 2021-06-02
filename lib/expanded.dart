import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amberAccent,
                  height:200,
                  width:200,
                ),
              ),
              Expanded(
                  flex: 2,
                  ///space of container.
                  child: Container(
                    color: Colors.red,
                    height:200,
                    width: 200,
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  height:200,
                  width:200,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
