import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

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
  Future getimagefirebase() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn =
        await firestore.collection("image collection").getDocuments();
    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getimagefirebase(),
          builder: (_, snapshot) {
            return CarouselSlider.builder(
              slideBuilder: (index) {
                DocumentSnapshot sliderimage = snapshot.data[index];
                return Container(
                    child: Image.network(
                  sliderimage['image'],
                ));
              },
              slideTransform: CubeTransform(
                rotationAngle: 0,
              ),
              slideIndicator: CircularSlideIndicator(
                indicatorBackgroundColor: Colors.red,
                currentIndicatorColor: Colors.blue,
              ),
              itemCount: snapshot.data.length,
            );
          }),
    );
  }
}
