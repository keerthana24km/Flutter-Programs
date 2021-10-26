import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home: Home()
  ));
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Container!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Container(
        color: Colors.lightBlue[600],
        padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
        margin: EdgeInsets.all(30.0),
        child: Text("Hello!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}