import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.green,
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
    return Scaffold(
        body: Center(
            child: RaisedButton(
      color: Colors.blue,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return OverflowBox(
                maxHeight: double.infinity,
                child: Container(
                  height: 500,
                  child: Column(children: <Widget>[
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                    ListTile(
                        title: Text("one"),
                        subtitle: Text("this is one"),
                        trailing: Icon(Icons.access_alarm)),
                  ]),
                ),
              );
            });
      },
      child: Text("Click me"),
    )));
  }
}
