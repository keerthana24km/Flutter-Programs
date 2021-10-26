import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteTemplate.dart';
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
  List<Quote> quotes = [
    Quote(author: 'Mary Follet',text: 'Management is the art or science of getting things done by people.'),
    Quote(author: 'Vivek Wadhwa',text: 'A key to achieve success is to assemble a strong and stable management team.'),
    Quote(author: 'Peter Drucker',text: 'Management is doing things right, Leadership is doing right things.'),
    Quote(author: 'John Ruskin',text: 'Quality is never an accident. It is always the result of intelligent effort.')
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
        children: quotes.map((quote) => QuoteTemplate(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}
