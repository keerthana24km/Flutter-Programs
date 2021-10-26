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
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
      ),
      body: Center(
        child: Text("Hello Hello",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.red[800],
            letterSpacing: 2.0,
            fontFamily: 'TrainOne',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.blue[700],
      ),
    );
  }
}