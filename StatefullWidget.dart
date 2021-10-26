import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}
class MyState extends State{
  int count = 0;

  void updateCount(){
    count++;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Stateful Widget"),
          titleTextStyle: new TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          backgroundColor: Colors.pink,
        ),
        body: new Center(
          child: new Text("The button is pressed $count number of times...",
          style: new TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 40.0,backgroundColor: Colors.indigo)
          ),
        ),
        floatingActionButton: new FloatingActionButton(onPressed: updateCount,
        child: new Icon(Icons.add_circle_outline),backgroundColor: Colors.indigo),
      ),
    );
  }

}