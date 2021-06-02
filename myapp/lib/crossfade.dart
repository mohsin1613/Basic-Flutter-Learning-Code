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
  var chk = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedCrossFade(
              firstChild: Container(
                  color: Colors.greenAccent,
                  height: 200,
                  width:double.infinity,
                  child: Center(
                    child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            chk = 0;
                          });
                        },
                        child: Text("Sign in")),
                  )),
              secondChild: Text("Sign in Successfully!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              crossFadeState: chk == 1
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 2))
        ],
      ),
    ));
  }
}
