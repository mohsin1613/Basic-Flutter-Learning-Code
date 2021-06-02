import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      darkTheme: ThemeData(
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
  File image;
  Future Cameraimage() async {
    final picker = ImagePicker();
    var img = await picker.getImage(source: ImageSource.camera);
    ///gallery dile gallery theke image select hobe
    setState(() {
      image = File(img.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.pinkAccent,
          child: image == null ? Center( child: Text("No Image selected!",style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold))) : Image.file(image),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Cameraimage();
              },
              child: Icon(Icons.camera),
            ),
            SizedBox(width: 20),
            FloatingActionButton(
                onPressed: () {}, child: Icon(Icons.photo_library))
          ],
        ),
      ],
    ));
  }
}
