import 'package:flutter/material.dart';
import 'package:flutter_project/SignIn.dart';
void main(){
  runApp(MaterialApp(
    home: SignUp(),
  ));
}
class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController un = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  String validatepass(value){
    if(value == "Kmk@2410"){
      return null;
    }else{
      return "Invalid password";
    }
  }

  String validate(){
    if(formkey.currentState.validate()){
      print("Sign-up successful!");
    }
    else{
      print("Unsuccessful Sign-up");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("SignUp",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(68.0,40.0,10.0,65.0),
              child: Row(
                children: <Widget>[
                  Text("SIGN-UP PAGE",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Colors.indigo[900])),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text("Username",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold, color: Colors.indigo[900])),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0,0,30.0,0),
              child: TextFormField(
                decoration: InputDecoration(
                ),
                controller: un,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 30.0),
            Text("Password",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold, color: Colors.indigo[900])),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0,0,30.0,0),
              child: TextFormField(
                decoration: InputDecoration(
                ),
                controller: pass,
                keyboardType: TextInputType.text,
                validator: validatepass,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(onPressed: (){
              pass.text!="Kmk@2410" ?
              validate() : Navigator.push(context,MaterialPageRoute(
                  builder: (BuildContext context){
                    return MaterialApp(
                      home: SignIn(),
                    );
                  }
                ));
               },
                child: Text("SIGN-UP",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
