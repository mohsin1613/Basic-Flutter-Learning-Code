import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int value=0;
  increment(){
    setState(() {
      value++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString(),style: TextStyle(fontSize: 50),),
            RaisedButton(
              child:Text("Button"),
              color: Colors.blue,
              onPressed:(){
                increment();
              }
            )
          ],
        ),
      )
      )
    );
  }
}
