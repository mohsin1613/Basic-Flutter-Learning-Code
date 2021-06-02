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

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Data table"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: DataTable(headingRowHeight: 100, columns: [
        DataColumn(label: Text("Name")),
        DataColumn(label: Text("Age")),
        DataColumn(label: Text("Roll")),
      ], rows: [
        DataRow(cells: [
          DataCell(Text("Mohsin")),
          DataCell(Text("22")),
          DataCell(Text("01"), showEditIcon: true),
        ]),
        DataRow(cells: [
          DataCell(Text("Mohsin")),
          DataCell(Text("22")),
          DataCell(Text("01"), showEditIcon: true),
        ]),
        DataRow(cells: [
          DataCell(Text("Mohsin")),
          DataCell(Text("22")),
          DataCell(Text("01"), showEditIcon: true),
        ]),
        DataRow(cells: [
          DataCell(Text("Mohsin")),
          DataCell(Text("22")),
          DataCell(Text("01"), showEditIcon: true),
        ]),
        DataRow(cells: [
          DataCell(Text("Mohsin")),
          DataCell(Text("22")),
          DataCell(Text("01"), showEditIcon: true),
        ]),
      ])),
    );
  }
}
