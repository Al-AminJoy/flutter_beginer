import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = '';

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2022));
    if (picked != null) setState(() => _value = picked.toString());
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
              new Text('${_value}'),
              new ElevatedButton(
                onPressed: _selectDate,
                child: new Text('Peak Date'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
