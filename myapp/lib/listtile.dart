import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        home: Scaffold(
          body:ListView(
            children: <Widget>[
              ListTile(
                title:Text("Frist Tile"),
                subtitle:Text("this is the first tile"),
                leading:CircleAvatar(child:Icon(Icons.message),),
                trailing: Icon(Icons.add_a_photo),
              ),
              ListTile(
              title:Text("Second Tile"),
              subtitle:Text("this is the second tile"),
              leading:CircleAvatar(child:Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
              )
              ,ListTile(
                title:Text("Third Tile"),
                subtitle:Text("this is the third tile"),
                leading:CircleAvatar(child:Icon(Icons.message),),
                trailing: Icon(Icons.add_a_photo),
              ),
              ListTile(
                title:Text("Fourth Tile"),
                subtitle:Text("this is the fouth tile"),
                leading:CircleAvatar(child:Icon(Icons.message),),
                trailing: Icon(Icons.add_a_photo),
              ),
              ListTile(
                title:Text("Fifth Tile"),
                subtitle:Text("this is the fifth tile"),
                leading:CircleAvatar(child:Icon(Icons.message),),
                trailing: Icon(Icons.add_a_photo),
              )
            ],
          )
        ));
  }
}

