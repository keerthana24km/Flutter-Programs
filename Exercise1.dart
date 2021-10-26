import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Exercise1(),
  ));
}
class Exercise1 extends StatefulWidget {
  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  TextEditingController te1 = new TextEditingController();
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Example 1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 20.0)),
              Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35.0,color: Colors.black)),
              SizedBox(width: 15.0),
              TextFormField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                ),
                controller: te1,
                keyboardType: TextInputType.text,
              ),
          SizedBox(height: 25.0),
          ElevatedButton(onPressed: (){
            setState(() {
              msg = "Welcome "+te1.text;
            });
          },
              child: Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)),
          ),
          SizedBox(height: 10.0),
          Text("$msg",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.purple[900])),
        ],
      ),
    );
  }
}
