import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _val=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _val==false?Colors.deepOrange:Colors.green,
      body:Center(
        child:Switch(value:_val, onChanged:(value){
          setState(() {
            _val=value;
          });
        })
      )
    );
  }
}
