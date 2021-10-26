import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GoToSS(),
  ));
}
class GoToSS extends StatefulWidget {
  const GoToSS({Key key}) : super(key: key);

  @override
  _GoToSSState createState() => _GoToSSState();
}

class _GoToSSState extends State<GoToSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example 5",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21.0,270.0,12.0,0.0),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(
              builder: (BuildContext context){
                return Scaffold(
                  appBar: AppBar(
                    title: Text("Second Screen",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                  ),
                  body: Center(
                    child: Text("This is Second Screen",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
                  ),
                );
              }
              ));
        },
                  child: Text("GO TO SECOND SCREEN",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
