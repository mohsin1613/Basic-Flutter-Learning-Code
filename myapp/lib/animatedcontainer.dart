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
  bool test = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            test = true;
          });
        }),
        body: Center(
          child: AnimatedContainer(
              height: test == false ? 200 : 500,
              width: test == false ? 200 : 300,
              color:Colors.greenAccent,
              duration: Duration(seconds: 2)),
        ),
      ),
    );
  }
}
