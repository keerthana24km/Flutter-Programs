import 'package:flutter/material.dart';

void main(){
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}
class MyState extends State{
  @override
  TextEditingController te1 = new TextEditingController();
  String msg = "---------------";
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(title: new Text("Flutter UI App"),
                         titleTextStyle: new TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),
                         backgroundColor: Colors.pink,
                         centerTitle: true),
      body: new Center(
        child: new Form(child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Text"
              ),
            controller: te1,
            keyboardType: TextInputType.text,
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new ElevatedButton(onPressed: (){
              msg = te1.text;
              setState(() {

              });
            },
            child: new Text("GetText",style: new TextStyle(color: Colors.pink,fontSize: 40.0,backgroundColor: Colors.amberAccent)),
                ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Text("The text is : $msg", style: new TextStyle(backgroundColor: Colors.indigo,fontSize: 35.0,fontWeight: FontWeight.bold)),
          ],
        ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: (){
      }, child: new Icon(Icons.exit_to_app),backgroundColor: Colors.pink,
      ),
      ),
    );
  }

}