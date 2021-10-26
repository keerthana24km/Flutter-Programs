import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Fruits(),
  ));
}
class Fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text("Example 3",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('im/apple.jpg'),
                  radius: 35.0,
                ),
                SizedBox(width: 10.0),
                Text("Apple",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.red[600])),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('im/mango.jpg'),
                  radius: 35.0,
                ),
                SizedBox(width: 10.0),
                Text("Mango",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.yellow[700])),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('im/pineapple.jpg'),
                  radius: 35.0,
                ),
                SizedBox(width: 10.0),
                Text("Pineapple",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent[700])),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('im/grapes.jpg'),
                  radius: 35.0,
                ),
                SizedBox(width: 10.0),
                Text("Grapes",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.green[500])),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('im/orange.jpg'),
                  radius: 35.0,
                ),
                SizedBox(width: 10.0),
                Text("Orange",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.orange[600])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
