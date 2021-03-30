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
  void _onChange(String value){
    setState(()=>_value='On Change : ${value}');
  }
  void _onSubmit(String value){
    setState(() =>_value='On Submit : ${value}');
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
               new Text('$_value'),
                new TextField(
                  decoration: new InputDecoration(
                    hintText: 'Hint',
                    labelText: 'Hello',
                    icon: new Icon(Icons.people),
                  ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                onChanged: _onChange,
                  onSubmitted: _onSubmit,

                )
              ],
            ),
          ),
        ),
      );
  }
}