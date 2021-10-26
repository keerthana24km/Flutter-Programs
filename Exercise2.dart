import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Exercise2(),
  ));
}
class Exercise2 extends StatefulWidget {
  @override
  _Exercise2State createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  TextEditingController te1 = new TextEditingController();
  TextEditingController te2 = new TextEditingController();
  String add = "";
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Example 2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
                Text("Enter first number : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)),
                SizedBox(height: 5.0),
                TextFormField(
                  decoration: InputDecoration(),
                  controller: te1,
                  keyboardType: TextInputType.number,
                ),
            SizedBox(height: 10.0),
            Text("Enter second number : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)),
            SizedBox(height: 5.0),
            TextFormField(
              decoration: InputDecoration(),
              controller: te2,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(onPressed: (){
              setState(() {
                sum = int.parse(te1.text)+int.parse(te2.text);
                add = "Result : "+(sum.toString());
              });
            },
              child: Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)),
            ),
            SizedBox(height: 10.0),
            Text("$add",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.purple[900])),
          ],
        ),
      ),
    );
  }
}
