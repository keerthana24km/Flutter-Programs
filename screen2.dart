import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Screen2(),
  ));
}
class Screen2 extends StatelessWidget {
  String value;
  Screen2({this.value});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
      ),
      body: Center(
          child: Text("$value",style: TextStyle(fontSize: 25.0), textAlign: TextAlign.center)
      ),
    );
  }
}
