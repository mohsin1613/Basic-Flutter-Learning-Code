import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

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
    final providerdata = Provider.of<Data>(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(providerdata.value.toString(), style: TextStyle(fontSize: 50)),
          RaisedButton(
            color: Colors.green,
            onPressed: () {
              providerdata.increment();
            },
          )
        ]),
      ),
    ));
  }
}
