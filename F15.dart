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
        title: Text("Expanded Widget!"),
        centerTitle: true,
        backgroundColor: Colors.green[500],
      ),
      body: Row(
            children: <Widget>[
              Expanded(flex: 2,child: Image.asset('imagee/images.jpg')),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(30.0,30.0,30.0,30.0),
              color: Colors.pink[200],
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(30.0,30.0,30.0,30.0),
                color: Colors.red[500],
                child: Text("2"),
              ),
          ),
          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(30.0,30.0,30.0,30.0),
                color: Colors.cyan[500],
                child: Text("3"),
              ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("CLICK"),
        backgroundColor: Colors.green[500],
      ),
    );
  }
}