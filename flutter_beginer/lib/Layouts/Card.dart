import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  _State createState()=>new _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter App'),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(50.0)
                 ),
                 child: new Container(
                   padding: new EdgeInsets.all(32.00),
                   child: new Column(
                     children: [
                       new Text('Hello'),
                       new Text('My Name is Al-Amin'),
                     ],
                   ),
                 ),
                 ),
              ],
            ),
          ),
        ),
      );
  }
}