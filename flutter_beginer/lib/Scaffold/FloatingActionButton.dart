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
  String value='';
  void _onClicked(){
    setState(() {
      value=DateTime.now().toString();
    });
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter App'),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _onClicked,
          backgroundColor: Colors.brown,
          child: new Icon(Icons.timer),
          mini: true,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Text(value),
              ],
            ),
          ),
        ),
      );
  }
}