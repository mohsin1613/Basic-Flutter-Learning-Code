import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Builder(
                builder: (BuildContext con) {
                  return RaisedButton(
        onPressed: () {
          Scaffold.of(con).showSnackBar(
              SnackBar(
              content: Text("This is Snackbar"),
              duration: Duration(seconds: 10),
              action: SnackBarAction(
                label: "Ok",
                onPressed: () {},
              )));
        },
        child: Text("Click"),
      );
    })));
  }
}
