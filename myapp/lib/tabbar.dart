import 'package:Myapp/one.dart';
import 'package:Myapp/three.dart';
import 'package:Myapp/two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text("Communication Guide"),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car,color: Colors.greenAccent, size: 50.0)),
                  Tab(icon: Icon(Icons.directions_transit,color:Colors.greenAccent,size:50.0)),
                  Tab(icon: Icon(Icons.directions_bike,color:Colors.greenAccent,size:50.0))
                ],
              )),
      body:TabBarView(children:[
       One(),
        Two(),
        Three(),
      ]
      )),
    )
    );
  }
}
