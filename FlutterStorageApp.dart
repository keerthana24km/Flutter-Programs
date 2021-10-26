import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  insert() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', te1.text);
    await prefs.setString('pass', te2.text);
  }
  read()  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
    pass = prefs.getString('pass');
    setState(() {

    });
  }
  TextEditingController te1 = new TextEditingController();
  TextEditingController te2 = new TextEditingController();
  String email = "--------";
  String pass = "--------";
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: new Scaffold(
       appBar: new AppBar(title: new Text("Flutter Storage App"),
           titleTextStyle: new TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.lightGreenAccent),
       backgroundColor: Colors.pink),
       body: new Container(
         padding: EdgeInsets.all(10.0),
         child: new Center(
           child: new Form(child: new Column(
             children: <Widget>[
               new TextFormField(
                 controller: te1,
                 decoration: new InputDecoration(
                   hintText: "Enter email"
                 ),
               ),
               new Padding(padding: EdgeInsets.only(top: 20.0)),
               new TextFormField(
                 controller: te2,
                 decoration: new InputDecoration(
                     hintText: "Enter Password"
                 ),
               ),
               new Padding(padding: EdgeInsets.only(top: 20.0)),
               new Row(
                 children: <Widget>[
                   new Padding(padding: EdgeInsets.only(left: 10.0)),
                   new ElevatedButton(onPressed: insert,
                       child: new Text("INSERT",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.white),
                   )),
                   new Padding(padding: EdgeInsets.only(right: 30.0)),
                   new ElevatedButton(onPressed: read,
                       child: new Text("READ",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.white),
                   )),
                 ],
               ),
               new Padding(padding: EdgeInsets.only(top: 20.0)),
               new Text("$email",style: new TextStyle(backgroundColor: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 35.0)),
               new Padding(padding: EdgeInsets.only(top: 20.0)),
               new Text("$pass",style: new TextStyle(backgroundColor: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 35.0)),
             ],
           )),
         )
       ),
       floatingActionButton: new FloatingActionButton(onPressed: (){

       },child: new Icon(Icons.arrow_back_outlined),backgroundColor: Colors.indigo),
       ),
   ); 
  }
}