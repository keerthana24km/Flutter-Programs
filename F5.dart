import 'package:flutter/cupertino.dart';
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
        title: Text("Image!"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Image.network('https://i.pinimg.com/originals/89/27/dc/8927dcf60dfd605fce74cc3e2aea015f.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.pink[700],
      ),
    );
  }
}