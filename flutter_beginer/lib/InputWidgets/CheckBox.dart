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
               new Checkbox(value: _value_1, onChanged: value1Changed),
                new CheckboxListTile(
                    value: _value_2,
                    onChanged: value2Changed,
                    title: new Text('Hello World'),
                    controlAffinity: ListTileControlAffinity.leading,
                    secondary: new Icon(Icons.archive),
                  activeColor: Colors.red,
                )
              ],
            ),
          ),
        ),
      );
  }
}