import 'package:Myapp/alertdialog.dart';
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
      child: Dismissible(
        key: ValueKey("abc"),
        background: Container(
          child: Icon(Icons.delete),
          color: Colors.greenAccent,
        ),
        secondaryBackground: Container(
          child: Icon(Icons.delete),
          color: Colors.redAccent,
        ),
        child: ListTile(
          title: Text("This Is Dismiss"),
          subtitle: Text("subtitle here . no need to explain it"),
          trailing: Icon(Icons.bluetooth_audio),

        ),
      ),
    ));
  }
}
