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
        title: Text("Icon within Button!"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Center(
        child: ElevatedButton.icon(onPressed: (){},
            icon: Icon(Icons.email),
            label: Text('Mail'),
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