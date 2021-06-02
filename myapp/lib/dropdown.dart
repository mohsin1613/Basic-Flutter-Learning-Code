import 'package:flutter/cupertino.dart';
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
  var select = "Choose";
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            select,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
          DropdownButton(
              iconSize: 50,
              items: [
                DropdownMenuItem(
                  value: "This is One",
                  child: Text("One"),
                ),
                DropdownMenuItem(
                  value: "This is two",
                  child: Text("Two"),
                ),
                DropdownMenuItem(
                  value: "This is three",
                  child: Text("three"),
                ),
                DropdownMenuItem(
                  value: "This is four",
                  child: Text("four"),
                ),
              ],
              onChanged: (val) {
                setState(() {
                  select = val;
                });
              })
        ],
      ),
    ));
  }
}
