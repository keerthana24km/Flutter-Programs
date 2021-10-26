import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController un = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();
  bool isEnabled = true;
  int c=0;
  disableButton(){
    setState(() {
      isEnabled = false;
    });
  }
  String validatepass(value){
    if(value == 'Kmk@2410'){
      return null;
    }else{
      return "Invalid password";
    }
  }
  String validateun(value) {
    if (value == 'usn29') {
      return null;
    } else {
      return "Invalid username";
    }
  }
  String validate(){
      if (formkey.currentState.validate()) {
        print("Sign-in successful!");
      }
      else {
          c++;
          print("Login failed $c time");
          if (c == 3) {
            print("Failed Login Attempts");
          }
      }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text("SignIn",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
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
                  Text("SIGN-IN PAGE",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Colors.indigo[900])),
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
                validator: validateun,
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
                keyboardType: TextInputType.visiblePassword,
                validator: validatepass,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(onPressed: (){
              c==3 ? null : validate();
            },
                child: Text("SIGN-IN",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
