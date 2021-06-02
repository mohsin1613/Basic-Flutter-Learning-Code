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
  DateTime _date;
  TimeOfDay _time;

  getDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 20));
    setState(() {
      _date = date;
    });
  }

  getTime() async {
    TimeOfDay time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _time = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _date == null
                  ? Text("Chose date")
                  : Text(
                      "Date: ${_date.day}/${_date.month}/${_date.year}",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent),
                    ),
              _time == null
                  ? Text("Chose time")
                  : Text("Time: ${_time.hour} : ${_time.minute} ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      )),
              RaisedButton(
                onPressed: () {
                  getDate();
                },
                color: Colors.blue,
                child: Text("date"),
              ),
              RaisedButton(
                  onPressed: () {
                    getTime();
                  },
                  child: Text("time"),
                  color: Colors.redAccent)
            ],
          ),
        ),
      ),
    );
  }
}
