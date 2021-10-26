import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: test(),
  ));
}
class test extends StatefulWidget {
 @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  TextEditingController date = new TextEditingController();
  List<String> text = <String>['Aries','Taurus','Gemini','Cancer','Leo','Virgo','Libra','Scorpio','Sagittarius','Capricorn','Aquarius','Pisces'];
  List<String> signs = <String>["im/zs/aries.jpg",
                                "im/zs/tau.jpg",
                                "im/zs/gem.jpg",
                                "im/zs/can.jpg",
                                 "im/zs/leo.jpg",
                                 "im/zs/virgo.jpg",
                                 "im/zs/libra.jpg",
                                "im/zs/scor.jpg",
                                "im/zs/sag.jpg",
                                "im/zs/cap.jpg",
                                "im/zs/aqua.jpg",
                                "im/zs/pis.jpg"];
  String t = "";
  String image = "im/zs/main.jpg";
  String sent = "| 21st Mar | 20th Apr | 21st May |                    | 21st June | 23rd July | 23rd Aug |                 | 23rd Sept | 23rd Oct | 22nd Nov |                  | 22nd Dec | 20th Jan | 19th Feb |";
  Widget zodiac1(){
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${t = text[0]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
            Image.asset(image = signs[0]),
            Text("${sent = "The same zodiac sign is applicable for all dates till 19th of April!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
          ],
        );
  }
  Widget zodiac2(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${t = text[1]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
          Image.asset(image = signs[1]),
          Text("${sent = "The same zodiac sign is applicable for all dates till 20th of May!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
        ],
      );
  }
  Widget zodiac3(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[2]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[2]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 20th of June!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac4(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[3]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[3]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 22nd of July!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac5(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[4]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[4]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 22nd of August!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac6(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[5]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[5]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 22nd of September!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac7(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[6]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[6]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 22nd of October!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac8(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[7]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[7]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 21st of November!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac9(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[8]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[8]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 21st of December!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac10(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[9]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[9]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 19th of January!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac11(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[10]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[10]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 18th of February!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  Widget zodiac12(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${t = text[11]}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        Image.asset(image = signs[11]),
        Text("${sent = "The same zodiac sign is applicable for all dates till 20th of March!"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("Zodiac Sign",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Eg.,21st Mar",
              ),
              controller: date,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                date.text.toString().contains("21st Mar") ? zodiac1() : Text("Nothing to display") ;
                date.text.toString().contains("20th Apr") ? zodiac2() : Text("Nothing to display") ;
                date.text.toString().contains("21st May") ? zodiac3() : Text("Nothing to display") ;
                date.text.toString().contains("21st June") ? zodiac4() : Text("Nothing to display") ;
                date.text.toString().contains("23rd July") ? zodiac5() : Text("Nothing to display") ;
                date.text.toString().contains("23rd Aug") ? zodiac6() : Text("Nothing to display") ;
                date.text.toString().contains("23rd Sept") ? zodiac7() : Text("Nothing to display") ;
                date.text.toString().contains("23rd Oct") ? zodiac8() : Text("Nothing to display") ;
                date.text.toString().contains("22nd Nov") ? zodiac9() : Text("Nothing to display") ;
                date.text.toString().contains("22nd Dec") ? zodiac10() : Text("Nothing to display") ;
                date.text.toString().contains("20th Jan") ? zodiac11() : Text("Nothing to display") ;
                date.text.toString().contains("19th Feb") ? zodiac12() : Text("Nothing to display") ;
              });
            }, child: Text("View")),
            SizedBox(height: 10.0),
            Text("$t",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
            SizedBox(height: 3.0),
            Image.asset(image),
            Text("$sent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),textAlign: TextAlign.center),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
