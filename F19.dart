import 'package:flutter/cupertino.dart';
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
    Quote(author: 'Mary Follet',text: 'Management is the art or science of getting things done by people.'),
    Quote(author: 'Vivek Wadhwa',text: 'A key to achieve success is to assemble a strong and stable management team.'),
    Quote(author: 'Peter Drucker',text: 'Management is doing things right, Leadership is doing right things.'),
    Quote(author: 'John Ruskin',text: 'Quality is never an accident. It is always the result of intelligent effort.')
  ];

  Widget quoteTemplate(quote){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        margin: EdgeInsets.only(top: 15.0, bottom: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
            style:  TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
            SizedBox(height: 15.0,),
            Text(quote.author,
                style:  TextStyle(color: Colors.black,fontSize: 20.0,fontFamily: 'TrainOne')),
          ],
        ),
      ),
    );
  }
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
        children: quote.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
