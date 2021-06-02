import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var val=10.0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            Text("this is volume",style:TextStyle(fontSize:val)),
            Expanded(
              flex:0,
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Icon(Icons.volume_up,size:40),
                  SizedBox(height:20),
                  Slider(
                    min:5.0,
                    max:100.0,
                    value:val,
                    divisions:10,
                    onChanged:(value){
                      setState((){
                        val=value;
                      });
                    } ,

                  ),
                ]
              )
            )
          ]
        )
      )
    );
  }
}
