import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Todo(),
  ));
}
class Todo extends StatefulWidget {
  const Todo({Key key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController todo = new TextEditingController();
  String date = "";
  String date1(){
    date = DateTime.now().toString();
    date = date.substring(0,16);
    return date;
  }
  List<String> item = <String>["","","","",""];
  String im = "";
  int c = -1;
  String todolist(){
    c++;
    im = todo.text;
    item.insert(c, todo.text);
    print(item);
    return item[c];
    }
  String todo1(){
      return "${date1()}               ${todolist()}";
  }
  Widget Todo(){
      return Row(
        children: [
          Text("${date1()}"),
          Text("${todolist()}"),
        ],
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(),
            controller: todo,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: (){
            setState(() {
              todolist();
            });
          },
              child: Text("View")),
          SizedBox(height: 20.0),
          Text("---------------------------------------------"),
          Text("Date and Time                Description"),
          Text("---------------------------------------------"),
          Todo(),
        ],
      ),
    );
  }
}
