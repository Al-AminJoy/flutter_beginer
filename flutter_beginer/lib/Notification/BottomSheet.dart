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
  void _showBottomSheet(){
    showModalBottomSheet<void>(context: context,
        builder: (BuildContext context)
         {
           return new Container(
             padding: new EdgeInsets.all(15.0),
             child: new Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 new Text('Some Info Here',
                   style:new TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.red
                   ) ,
                 ),
                 new ElevatedButton(onPressed: ()=>Navigator.pop(context),child: new Text('Close'),)
               ],
             ),

           );
         }
    );
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
               new ElevatedButton(onPressed: _showBottomSheet,child: new Text('Show'),)
              ],
            ),
          ),
        ),
      );
  }
}