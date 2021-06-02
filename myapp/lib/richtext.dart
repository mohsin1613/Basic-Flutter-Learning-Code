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
        child: RichText(
          text: TextSpan(
              text: "This is my channel",
              style: TextStyle(fontSize: 15, color: Colors.blueAccent),
              children: [
                TextSpan(
                  text: " Subscribe Now",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
