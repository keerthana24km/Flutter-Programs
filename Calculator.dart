import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Calci(),
  ));
}
class Calci extends StatefulWidget {
  const Calci({Key key}) : super(key: key);

  @override
  _CalciState createState() => _CalciState();
}

class _CalciState extends State<Calci> {
  TextEditingController res = new TextEditingController();
  List ops = [];
  double op1,op2,result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIMPLE CALCULATOR",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Text("Result",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.indigo[700])),
          TextFormField(
            decoration: InputDecoration(),
            controller: res,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              SizedBox(width: 50.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "7";
              }, child: Text("7",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "8";
              }, child: Text("8",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "9";
              }, child: Text("9",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text=res.text+"/";
              }, child: Text("/",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              SizedBox(width: 50.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "4";
              }, child: Text("4",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "5";
              }, child: Text("5",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "6";
              }, child: Text("6",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text=res.text+"*";
              }, child: Text("*",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              SizedBox(width: 50.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "1";
              }, child: Text("1",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "2";
              }, child: Text("2",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "3";
              }, child: Text("3",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text=res.text+"-";
              }, child: Text("-",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              SizedBox(width: 50.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + ".";
              }, child: Text(".",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "0";
              }, child: Text("0",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                  if (res.text.contains("+")) {
                    ops = res.text.split("+");
                    if (ops.length == 2) {
                      op1 = double.parse(ops[0]);
                      op2 = double.parse(ops[1]);
                      result = op1 + op2;
                      res.text = result.toString();
                    }
                  }
                  if(res.text.contains("-")){
                    ops = res.text.split("-");
                    if(ops.length==2){
                      op1=double.parse(ops[0]);
                      op2=double.parse(ops[1]);
                      result=op1-op2;
                      res.text=result.toString();
                    }
                  }
                  if(res.text.contains("*")){
                    ops = res.text.split("*");
                    if(ops.length==2){
                      op1=double.parse(ops[0]);
                      op2=double.parse(ops[1]);
                      result=op1*op2;
                      res.text=result.toString();
                    }
                  }
                  if(res.text.contains("/")){
                    ops = res.text.split("/");
                    if(ops.length==2){
                      op1=double.parse(ops[0]);
                      op2=double.parse(ops[1]);
                      result=op1/op2;
                      res.text=result.toString();
                    }
                  }
                  else{
                    return null;
                  }
              }, child: Text("=",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
              SizedBox(width: 15.0),
              ElevatedButton(onPressed: (){
                res.text = res.text + "+";
              }, child: Text("+",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: (){
            res.text="";
          }, child: Text("C",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
          ),
        ],
      ),
    );
  }
}
