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
        title: Text("Icon as Button!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Center(
        child: IconButton(onPressed: (){
          print('You clicked me');
        },
        icon: Icon(Icons.adb_rounded),
        color: Colors.blue,iconSize: 60.0,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}