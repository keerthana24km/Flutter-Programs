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
        title: Text("Button!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          print("You clicked me");
        }, child: Text('BUTTON',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70)),
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