import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.redAccent[700],
      ),
      body: Center(
        child: Text("Hello Everyone!",
               style: TextStyle(
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.blue[800],
                   letterSpacing: 2.0,
                   fontFamily: 'TrainOne',
               ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.redAccent[700],
      ),
    ),
  ));
}