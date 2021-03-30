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
  final GlobalKey<ScaffoldState> _scaffoldstate=new GlobalKey<ScaffoldState>();
  void showSnakBar(){
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('Hello')));
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        key: _scaffoldstate,
        appBar: new AppBar(
          title: new Text('Flutter App'),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
              new ElevatedButton(onPressed: showSnakBar,child: new Text('ClickMe'),)
              ],
            ),
          ),
        ),
      );
  }
}