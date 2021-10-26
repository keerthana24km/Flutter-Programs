import 'package:flutter/material.dart';
class RB extends StatelessWidget {
  double P,E,R,T;
  List RP=[];
  List RI=[];
  List UP=[];
  @override
  Widget build(BuildContext context) {
    P = 120000;
    T = 120;
    R = 15;
    E = P/T;
    for(int i=1;i<=120;i++){
      RP[i]=P-E;
      RI[i]=(P*R)/1200;
      UP[i]=P-E;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Reducing Balance Chart",style: TextStyle(fontSize: 20.0)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2.0,5.0,2.0,0.0),
              child: Table(
                border: TableBorder.all(
                  color: Colors.black,width: 2.0,
                ),
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Column(children: <Widget>[Text("Principal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center)]),
                      Column(children: <Widget>[Text("EMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center)]),
                      Column(children: <Widget>[Text("Reduced Principal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center)]),
                      Column(children: <Widget>[Text("Reduced Interest",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.center)]),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Column(children: <Widget>[Text("$P")]),
                      Column(children: <Widget>[Text("$E")]),
                      Column(children: <Widget>[Text("${RP[1]}")]),
                      Column(children: <Widget>[Text("${RI[1]}")]),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Column(children: <Widget>[Text("${UP[1]}")]),
                      Column(children: <Widget>[Text("$E")]),
                      Column(children: <Widget>[Text("${RP[2]}")]),
                      Column(children: <Widget>[Text("${RI[2]}")]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
