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
        title: Text("Icon!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Center(
        child: Icon(
          Icons.add_ic_call,
          size: 50.0,
          color: Colors.pink[900],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}