import 'package:flutter/material.dart';
import 'package:flutter_project/World_time_app/home.dart';
import 'package:flutter_project/World_time_app/loading.dart';
import 'package:flutter_project/World_time_app/choose_location.dart';
void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
      '/location':(context) => Location(),
    },
  ));
}