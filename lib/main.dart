import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    //initialRoute: '/home',
    routes: {
      '/':(context)=>Home(),
      '/location':(context)=>ChooseLocation(),
      '/loading':(context)=>Loading(),
    },
  ));
}
