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
  int _index=0;
  List<BottomNavigationBarItem> _items;
  String _value='';
  @override
  void initState() {
    // TODO: implement initState
    _items=new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people),
        title:new Text('People'))
    );
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.weekend),
        title:new Text('Weekend'))
    );
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.message),
        title:new Text('Message'))
    );
  }

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('My App'),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Text(_value),
              ],
            ),
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: _items,
          fixedColor: Colors.blue,
          currentIndex: _index,
          onTap: (int value){
            setState(() {
              _index=value;
              _value=_index.toString();
            });
          },
        ),
      );
  }
}