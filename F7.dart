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
        child: Image.asset('imagee/images.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.pink[700],
      ),
    );
  }
}