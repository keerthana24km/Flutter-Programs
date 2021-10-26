import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}
class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0)),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20.0,bottom: 10.0)),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('im/mtg.jpg'),
                  radius: 35.0,
                ),
              ),
              SizedBox(width: 30.0),
              Text("Mentor To Go",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.indigo[800])),
              ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 5.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text("Shruthilaya",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,color: Colors.teal[900])),
              SizedBox(height: 12.0),
              Text("Mentor Co-ordinator",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,color: Colors.teal[900])),
              SizedBox(height: 12.0),
              Text("78XX23XXX1",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,color: Colors.teal[900])),
              SizedBox(height: 12.0),
              Text("Bangalore",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,color: Colors.teal[900])),
              SizedBox(height: 17.0),
              Text("email,fax,website",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.normal,color: Colors.grey[600])),
        ],
      ),
    );
  }
}