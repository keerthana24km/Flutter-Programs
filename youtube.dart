import'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
void main(){
  runApp(MaterialApp(
    home: Youtube(),
  ));
}
class Youtube extends StatefulWidget {
  const Youtube({Key key}) : super(key: key);

  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  TextEditingController video = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Launch Video"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://www.youtube.com/results?search_query=main+hoon+na';
            if(await canLaunch("$url")){
              await launch("$url");
            }
            else{
              throw "Could not launch $url";
            }
          },
              child: Text("Launch Youtube")),
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: () async {
            const url = 'https://en.wikipedia.org/wiki/Main_Hoon_Na';
            if(await canLaunch("$url")){
              await launch("$url");
            }
            else{
              throw "Could not launch $url";
            }
          },
              child: Text("Launch Wikipedia")),
        ],
      ),
    );
  }
}