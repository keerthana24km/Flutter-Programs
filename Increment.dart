import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Incr(),
  ));
}
class Incr extends StatefulWidget {
  @override
  _IncrState createState() => _IncrState();
}

class _IncrState extends State<Incr> {
  void incr(){
    setState(() {
      num=num+1;
    });
  }
  void decr(){
    setState(() {
      num=num-1;
    });
  }
  void reset(){
    setState(() {
      num=0;
    });
  }
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(119.0,100.0,119.0,50.0),
            child: Text("Number : $num",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: incr,
              child: Text("Increment",style: TextStyle(fontSize: 33.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: decr,
              child: Text("Decrement",style: TextStyle(fontSize: 33.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: reset,
              child: Text("Reset",style: TextStyle(fontSize: 33.0)),
            ),
          ),
        ],
      ),
    );
  }
}
