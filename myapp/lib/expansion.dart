import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        ExpansionTile(
          title: Text("One"),
          subtitle: Text("This is one page"),
          leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_downward),
          children: <Widget>[
            Container(
              height: 100,
              width: 200,
              color: Colors.purple,
            )
          ],
        ),
        ExpansionTile(
          title: Text("Two"),
          subtitle: Text("This is two page"),
          leading: Icon(Icons.alarm),
          trailing: Icon(Icons.arrow_downward),
          children: <Widget>[
            Container(
              height: 100,
              width: 200,
              color: Colors.green,
            )
          ],
        ),
      ],
    ));
  }
}
