import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> quote = [
    'Where there is a will, there is a way.',
    'Talk less, work more.',
    'Practice makes man perfect.',
    'Success comes hand in hand with Hard work.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("QUOTES",style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple[600],
        centerTitle: true,
      ),
      body: Column(
        children: quote.map((quote) => Text(quote,style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold))).toList(),
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
