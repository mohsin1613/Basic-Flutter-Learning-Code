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
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {},
              tooltip: "dashboard",
            ),
                Tooltip(
                  message: "container",
                  child: Container(
                    height:100,
                    width:100,
                    color:Colors.purple,
                  ),
                )
          ]),
        ));
  }
}
