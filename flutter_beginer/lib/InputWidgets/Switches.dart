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
  bool _value_1=false;
  bool _value_2=false;
  void value1Changed(bool value){
    setState(() {
      _value_1=value;
    });
  }
  void value2Changed(bool value){
    setState(() {
      _value_2=value;
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
               new Switch(value: _value_1, onChanged: value1Changed),
                new SwitchListTile(
                    value: _value_2,
                    onChanged: value2Changed,
                    activeColor:Colors.green ,
                    title: new Text(
                      'Hello',
                      style:new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    )
              ],
            ),
          ),
        ),
      );
  }
}