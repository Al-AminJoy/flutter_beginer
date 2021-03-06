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
  double _value=0.00;
  void setValue(double value){
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
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Text('${(_value*100).round()}'),
                new Slider(value: _value, onChanged: setValue)
              ],
            ),
          ),
        ),
      );
  }
}