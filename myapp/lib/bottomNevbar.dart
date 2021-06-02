import 'package:Myapp/four.dart';
import 'package:Myapp/one.dart';
import 'package:Myapp/three.dart';
import 'package:Myapp/two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var currentindex = 0;
  final pages = [One(), Two(), Three(), Four()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.lightBlue,
                icon: Icon(Icons.message),
                title: Text("message")),
            BottomNavigationBarItem(
                backgroundColor: Colors.orangeAccent,
                icon: Icon(Icons.add_a_photo),
                title: Text("Photo")),
            BottomNavigationBarItem(
                backgroundColor: Colors.deepPurpleAccent,
                icon: Icon(Icons.call),
                title: Text("Call")),
            BottomNavigationBarItem(
                backgroundColor: Colors.blueAccent,
                icon: Icon(Icons.pan_tool),
                title: Text("pan tools")),
          ],
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          }),
      body: pages[currentindex],
    );
  }
}
