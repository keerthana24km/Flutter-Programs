import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SI(),
  ));
}
class SI extends StatefulWidget {
  @override
  _SIState createState() => _SIState();
}

class _SIState extends State<SI> {
  TextEditingController p = new TextEditingController();
  TextEditingController r = new TextEditingController();
  TextEditingController t = new TextEditingController();
  String SiIn="";
  double Interest;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple[800],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text("Principal Amount",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: InputDecoration(
            ),
            controller: p,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 15.0),
      Text("Rate of Interest",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
      TextFormField(
        decoration: InputDecoration(
        ),
        controller: r,
        keyboardType: TextInputType.text,
      ),
          SizedBox(height: 15.0),
        Text("Time period(in years)",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
    TextFormField(
    decoration: InputDecoration(
    ),
    controller: t,
    keyboardType: TextInputType.text,
    ),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: (){
            setState(() {
              Interest = (double.parse(p.text) * double.parse(t.text) * double.parse(r.text)) / 100.0;
              SiIn = "Simple Interest = "+"$Interest";
            });
          },
              child: Text("Calculate",style: TextStyle(fontSize: 20.0))
          ),
          SizedBox(height: 10.0),
      Text("$SiIn",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
