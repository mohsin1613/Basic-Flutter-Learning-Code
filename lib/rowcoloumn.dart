import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(title: Text("coloumn working")),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              /// similarly for Row use horizontal.
              child: Column(
                ///similiarly use Row container.
                children: <Widget>[
                  ///children and widget applying to use for multi widget together.
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(height: 10),
                  /// this is the size of box.
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),

                  /// this is the size of box.
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
