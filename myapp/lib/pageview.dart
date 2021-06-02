import 'package:Myapp/page1.dart';
import 'package:Myapp/page2.dart';
import 'package:Myapp/page3.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _Controller=PageController(    ///control the page state.
    initialPage:0
  );
void dispose()    ///for state refreshing.
{
  _Controller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:PageView(
          controller:_Controller,
          scrollDirection: Axis.vertical,  ///scrolling by default horixontal thake
          children:<Widget>[
            page1(),
            page2(),
            page3(),
            
          ]
        )
    )
    );
  }
}
