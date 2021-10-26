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
        title: Text("Columns!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Hello"),
              Text("World!"),
            ],
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.greenAccent[700],
            child: Text("Container 1"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.blueAccent[700],
            child: Text("Container 2"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            color: Colors.purpleAccent[700],
            child: Text("Container 3"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}