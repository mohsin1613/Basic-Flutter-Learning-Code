import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      child: RaisedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Alert"),
                  content: Text("Are you sure delete this content!!"),
                  actions: <Widget>[
                    RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Ok")),
                  ],
                );
              });
        },
        child: Text("Click"),
      ),
    ));
  }
}
