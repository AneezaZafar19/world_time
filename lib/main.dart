import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/':(context)=>Home(),
      '/loading':(context)=>Loading(),
      '/location':(context)=>ChooseLocation(),

    },
  ));
}
