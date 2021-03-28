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
  String _value='Hello';
  int _count=0;
  void _onPressed(String data){
    setState(() {
      _value=data;
    });

  }
  void _add(){
    setState(() {
      _count+=1;
    });}
    void _sub(){
      setState(() {
        _count-=1;
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
               new Text(_value),
                new ElevatedButton(onPressed:()=>_onPressed('My Name Is Al-Amin'),
                child:new Text('Click Me') ,),
                new TextButton(onPressed: ()=>_onPressed('I Am Flat Button'), 
                    child: new Text('Click Me'),),
                new IconButton(onPressed: _add,icon: new Icon(Icons.add),),
                new Text('${_count}'),
                new IconButton(onPressed: _sub,icon: new Icon(Icons.remove),),
              ],
            ),
          ),
        ),
      );
  }
}