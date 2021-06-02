import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
    return Scaffold(body: Center(child: RaisedButton(onPressed: () {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text("Alert Dialog",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                              SizedBox(
                                ///space newr jonna use kori.
                                height: 10,
                              ),
                              Text(
                                  "this is the dialog showing details in better performance to be good at physics",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ))
                            ],
                          ),
                        )),
                    Positioned(
                        top: -50,
                        child: CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              child: Image.asset("images/asset.webp")),
                        ))
                  ],
                ));
          });
    })));
  }
}
