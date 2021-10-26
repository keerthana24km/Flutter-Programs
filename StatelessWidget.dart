import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Stateless Widget"),
          titleTextStyle: new TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 40.0),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: new Center(
            child: new Text("Welcome to Home Screen",
              style: new TextStyle(backgroundColor: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
              fontSize: 60.0),
              textAlign: TextAlign.center,)
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: null, backgroundColor: Colors.deepPurple,
          child: new Icon(Icons.account_circle_outlined)),
      ),
    );
  }
}