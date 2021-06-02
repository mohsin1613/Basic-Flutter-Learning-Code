import 'package:flutter/material.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(    ///to know details ctr+v
     child: Scaffold(
        body:Container(
          height:200,
          width: 300,
          ///color: Colors.orange,
          decoration: BoxDecoration(color: Colors.orangeAccent),
          child:Text("This is flutter coding!",style:TextStyle(fontSize: 20 )),
        )
      ),
      ),
    );
  }

}
