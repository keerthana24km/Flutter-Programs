import 'package:flutter/material.dart';
import 'quote.dart';
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
  List<Quote> quote = [
    Quote(author: 'KMKee',text: 'Where there is a will, there is a way.'),
    Quote(author: 'KMKee',text: 'Talk less, work more.'),
    Quote(author: 'KMKee',text: 'Practice makes man perfect.'),
    Quote(author: 'KMKee',text: 'Success comes hand in hand with Hard work.')
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
        children: quote.map((quote) => Text('${quote.text} - ${quote.author}',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold))).toList(),
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
