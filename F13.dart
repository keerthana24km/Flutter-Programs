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
        title: Text("Rows!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("Hello World!"),
          ElevatedButton(onPressed: (){},
              child: Text("CLICK",style: TextStyle(backgroundColor: Colors.blue)),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.greenAccent[700],
            child: Text("Inside Container"),
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