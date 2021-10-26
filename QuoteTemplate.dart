import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteTemplate extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteTemplate({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
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
            ElevatedButton.icon(onPressed: delete,
                label: Text("Delete Quote"),
                icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
  }
