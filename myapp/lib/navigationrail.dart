import 'package:flutter/material.dart';
import 'one.dart';
import 'two.dart';

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
  var selectidx = 0;
  final pages = [One(), Two()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              backgroundColor: Colors.black,
              labelType: NavigationRailLabelType.all,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home, color: Colors.white),
                    label: Text("home icon",
                        style: TextStyle(color: Colors.white)),
                    selectedIcon: Icon(Icons.home, color: Colors.blue)),
                NavigationRailDestination(
                    icon: Icon(Icons.wifi, color: Colors.white),
                    label: Text("wifi icon",
                        style: TextStyle(color: Colors.white)),
                    selectedIcon: Icon(Icons.wifi, color: Colors.blue)),
              ],
              selectedIndex: selectidx,
              onDestinationSelected: (val) {
                setState(() {
                  selectidx = val;
                });
              },
            ),
            Expanded(
              child: Container(
                child: pages[selectidx],
              ),
            )
          ],
        ),
      ),
    );
  }
}
