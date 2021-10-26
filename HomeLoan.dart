import 'package:flutter/material.dart';
import 'package:flutter_project/RB.dart';
void main(){
  runApp(MaterialApp(
    home: HL(),
  ));
}
class HL extends StatefulWidget {
  @override
  _HLState createState() => _HLState();
}

class _HLState extends State<HL> {
  TextEditingController p = new TextEditingController();
  TextEditingController r = new TextEditingController();
  TextEditingController t = new TextEditingController();
  String EMI="",I="";
  double emi,intr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Loan EMI",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
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
          Text("Time period(in months)",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: InputDecoration(
            ),
            controller: t,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 75.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.account_balance),
                    onPressed: (){
                            setState(() {
                             emi = (double.parse(p.text) / double.parse(t.text));
                             EMI = "EMI = "+"${emi.round()}";
                             });
                           },
                         ),
                SizedBox(width: 10.0),
                Text("$EMI",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
              ],
            ),
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
          ElevatedButton(onPressed: (){
            setState(() {
              intr = (double.parse(p.text) * double.parse(r.text)) / 1200.0;
              I = "Interest/Month = "+"${intr.round()}";
            });
          },
              child: Text("Interest",style: TextStyle(fontSize: 20.0))
          ),
          SizedBox(height: 10.0),
          Text("$I",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
          SizedBox(height: 5.0),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
              return MaterialApp(
                home : RB(),
              );
            }));
          }, child: Text("View Chart",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
