import'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import'package:url_launcher/url_launcher.dart';
void main(){
  runApp(MaterialApp(
    home: Launch(),
  ));
}
class Launch extends StatelessWidget {
  Launch({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Launch App",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: ()
          async{
            const url = "https://www.google.com/";
            if(await canLaunch(url)){
              await launch(url,forceSafariVC: false);
            }else{
              throw 'Could not launch $url';
            }
          },
              child: Text("Launch Browser")),
          ElevatedButton(onPressed: ()
          async{
            const url = "https://maps.google.co.in/";
            if(await canLaunch(url)){
              await launch(url);
            }else{
              throw "Couldn't launch URL";
            }
          }, child: Text('Launch Maps')),
          ElevatedButton(onPressed: ()async{
            const phone = 'tel:991 634 5982';
            if(await canLaunch(phone)){
              await launch(phone);
            }else{
              throw 'Could not launch $phone';
            }
          }, child: Text('Launch Phone')),
        ],
      ),
    );
  }
}