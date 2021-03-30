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
  String _value='';
  void setValue(String value){
    setState(() {
      _value=value;
    });
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter App'),
        ),
        persistentFooterButtons: [
          new IconButton(icon: new Icon(Icons.add), onPressed: ()=>setValue('Add')),
          new IconButton(icon: new Icon(Icons.remove), onPressed:()=>setValue('Remove')),
          new IconButton(icon: new Icon(Icons.call), onPressed: ()=>setValue('Call')),
          new IconButton(icon: new Icon(Icons.cake), onPressed: ()=>setValue('Cake')),
        ],
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Text(_value),
              ],
            ),
          ),
        ),
      );
  }
}