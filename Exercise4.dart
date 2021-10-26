import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Login(),
  ));
}
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String validateem1(value){
    if(value!="keerthana@gmail.com"){
      return 'Enter a Valid EmailID';
    }
    else{
      return null;
    }
  }

  String validatepass(value){
    if(value.isEmpty){
      return "Required *";
    }
    else{
      return null;
    }
  }

  void validate(){
    if(formkey.currentState.validate()){
      print("Validated");
    }else{
      print("Not validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text("Example 4 - Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,30.0,20.0,30.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 25.0),
                ),
                validator: validateem1,
              ),
              SizedBox(height: 30.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 25.0),
                ),
                validator: validatepass,
              ),
              SizedBox(height: 30.0),
              ElevatedButton(onPressed: validate,
                  child: Text("LOGIN",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
