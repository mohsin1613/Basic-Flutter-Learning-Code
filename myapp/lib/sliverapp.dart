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
      home:Scaffold(
        body:CustomScrollView(
          slivers:<Widget>[
            SliverAppBar(
              pinned:true,
              expandedHeight: 100,
              backgroundColor: Colors.greenAccent,
              flexibleSpace:FlexibleSpaceBar(
                title: Text("SliverApp Here "),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(
              <Widget>[
               addtile("One","this is one "),
               addtile("Two","this is one "),
               addtile("Three","this is one "),
               addtile("Four","this is one "),
               addtile("Five","this is one "),
               addtile("Six","this is one "),
               addtile("Seven","this is one "),
               addtile("Eight","this is one "),
               addtile("Nine","this is one "),
               addtile("Nine","this is one "),
               addtile("Ten","this is one "),
               addtile("Elaven","this is one "),
              ]
            ),
            )
          ]
        )
      )
    );
  }
}

Widget addtile(String title,String subtitle){
  return ListTile(
    title:Text(title),
    subtitle:Text(subtitle),
    leading:CircleAvatar(
      child:Text(title[0])
    )
  );
}