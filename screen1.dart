import 'package:flutter/material.dart';
import 'package:flutter_project/screen2.dart';
void main(){
  runApp(MaterialApp(
    home: Screen1(),
  ));
}
class Screen1 extends StatefulWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController email = new TextEditingController();
  String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0,80.0,10.0,30.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
              ),
              controller: email,
              keyboardType: TextInputType.emailAddress,
              onChanged: (text){
                value = text;
              },
            ),
            SizedBox(height: 25.0),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute
                (builder: (context)=>Screen2(value : value)));
            },
                child: Text("SWITCH",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
