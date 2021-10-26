import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: LD(),
  ));
}
class LD extends StatefulWidget {
  @override
  _LDState createState() => _LDState();
}

class _LDState extends State<LD> {
  int l=0;
  int d=0;
  int lincr(){
    setState(() {
      l=l+1;
    });
  }
  int dincr(){
    setState(() {
      d=d+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Like Or Dislike?",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Image.asset('im/orange.jpg'),
            SizedBox(height: 15.0),
            Row(
              children: [
                IconButton(icon: Icon(Icons.thumb_up_alt_rounded),
                onPressed: lincr,
                iconSize: 40.0),
                Text(": ${l}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0)),
                SizedBox(width: 130.0),
                IconButton(icon: Icon(Icons.thumb_down_alt_rounded),
                    onPressed: dincr,
                    iconSize: 40.0),
                Text(": ${d}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
