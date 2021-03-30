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
  int _value=0;
  void add(){
    setState(() {
      _value++;
    });
  }
  void sub(){
    setState(() {
      _value--;
    });
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter App'),
          backgroundColor: Colors.green,
          actions: [
            new IconButton(icon: new Icon(Icons.add), onPressed: add),
            new IconButton(icon: new Icon(Icons.remove), onPressed: sub),
          ],
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Text(_value.toString()),
              ],
            ),
          ),
        ),
      );
  }
}