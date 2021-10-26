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
        title: Text("Padding!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(150.0, 310.0, 150.0, 310.0),
        child: Text("Hello!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.indigo)
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