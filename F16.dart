import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int credit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("Stateful Widget",style: TextStyle(color: Colors.pink[50]),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          credit+=1;
        });
      }, backgroundColor: Colors.indigo[900],
          child: Icon(Icons.add)),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('imagee/images.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(height: 40.0,thickness: 3.0,color: Colors.grey[500],),
            Text("NAME",style: TextStyle(color: Colors.black,fontSize: 20.0,letterSpacing: 1.0),),
            SizedBox(height: 10.0,),
            Text("Keerthana",style: TextStyle(color: Colors.indigo[900],fontSize: 25.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
            SizedBox(height: 25.0,),
            Text("USN",style: TextStyle(color: Colors.black,fontSize: 20.0,letterSpacing: 1.0),),
            SizedBox(height: 10.0,),
            Text("1JT18CS029",style: TextStyle(color: Colors.indigo[900],fontSize: 25.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
            SizedBox(height: 25.0,),
            Text("CREDITS",style: TextStyle(color: Colors.black,fontSize: 20.0,letterSpacing: 1.0),),
            SizedBox(height: 10.0,),
            Text("$credit",
              style: TextStyle(color: Colors.indigo[900],fontSize: 25.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
            SizedBox(height: 25.0,),
            Row(
              children: <Widget>[
                Icon(Icons.email,color: Colors.black,size: 30.0),
                SizedBox(width: 10.0),
                Text("keerthana@gmail.com",style: TextStyle(color: Colors.black,fontSize: 20.0,letterSpacing: 1.0,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(Icons.phone,color: Colors.black,size: 30.0),
                SizedBox(width: 10.0),
                Text("9901234567",style: TextStyle(color: Colors.black,fontSize: 20.0,letterSpacing: 1.0,fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
