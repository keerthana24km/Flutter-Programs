import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController type = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Sample"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(),
            controller: type,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => list()),
            );
          },
          child: Text("Enter")),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
Widget list() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Related Videos"),
    ),
    body: Column(
        children: <Widget>[
          Text("Related Videos",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          Divider(height: 10.0, thickness: 2.0),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=OODnET06c-Y';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Main Hoon Na Full Video Song")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=Uu9294bol9U';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Main Hoon Na Full Movie(Buy or Rent)")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=mXkbWKr5ovU';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Tumse Milke Dil Ka Full Song[Main Hoon Na]")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=3txJ2ZaZo-M';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text(
                  "Kiska Hain Ye Tumko Intezaar Main Hoon Na 4K Video")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=lmPfioaW1Tw';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Chale Jaise Hawaien Full Song [Main Hoon Na]")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=RAKisl-L3CQ';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Tumhe Jo Maine Dekha Full Song [Main Hoon Na]")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=JP7rzWkUu8c';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Main Hoon Na Full Movie 1080p")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=O80gwpaGQXY';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text(
                  "Sharukh Khan's Introduction to Class | Main Hoon Na")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=snmFAp0ZMjM';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Miss Chandni Ki Ada | Main Hoon Na")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=DIJW7rWPkSw';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text("Main Hoon Na Title Song Full Video")),
          SizedBox(height: 15.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/watch?v=TTyjpmR0Eio';
            if (await canLaunch("$url")) {
              await launch("$url");
            }
            else {
              throw "Could not launch $url";
            }
          },
              child: Text(
                  "Main Hoon Na New Movie Release | Facts and Reviews")),
        ]
    ),
  );
}
