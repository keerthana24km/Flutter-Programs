import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Zodiac(),
  ));
}
class Zodiac extends StatefulWidget {

  @override
  _ZodiacState createState() => _ZodiacState();
}

class _ZodiacState extends State<Zodiac> {

  void dropDownDate(int select){
    setState(() {
      date = select;
    });
  }
  void dropDownMonth(int select1){
    setState(() {
      month = select1;
    });
  }
  int date;
  int month;
  List<String> date1 = <String>['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
  List<String> month1 = <String>['1','2','3','4','5','6','7','8','9','10','11','12'];
  Widget zodiac(){
    dropDownDate(21);
    dropDownMonth(3);
    if(date==21 && month==3) {
      return Column(
        children: [
          Text("Zodiac Sign : Aries",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
          SizedBox(height: 10.0),
          Image(image: AssetImage("im/zs/aries.jpg"),
              height: 250.0,
              width: 250.0),
        ],
      );
    }
    if(date==20 && month==4) {
      return Column(
        children: [
          Text("Zodiac Sign : Taurus",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
          SizedBox(height: 10.0),
          Image(image: AssetImage("im/zs/tau.jpg"),
              height: 250.0,
              width: 250.0),
        ],
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zodiac Signs",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Row(
            children: [
              Text("Choose date : ",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
              SizedBox(width: 15.0),
              DropdownButton<String>(
                hint: Text("Select Date"),
                  items: date1.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                        child:Text(dropDownStringItem));
                  }).toList(),
                onChanged: (String select){
                    dropDownDate(int.parse(select));
                },
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Text("Choose month : ",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
              SizedBox(width: 15.0),
              DropdownButton<String>(
                hint: Text("Select Month"),
                items: month1.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child:Text(dropDownStringItem));
                }).toList(),
                onChanged: (String select1){
                  dropDownDate(int.parse(select1));
                },
              ),
            ],
          ),
          SizedBox(height: 30.0),
          ElevatedButton(onPressed: zodiac, child: Text("VIEW",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))),
          SizedBox(height: 15.0),
          zodiac(),
        ],
      ),
    );
  }
}
