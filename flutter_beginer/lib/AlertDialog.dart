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
  /**
    Error in Tutorial Have to Fix
   */
 /* Future _showAlert(BuildContext context,String message) async {
    return showDialog(
        context: context,
          ch)
  }*/
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
               new Text('Start From Here'),
              ],
            ),
          ),
        ),
      );
  }
}