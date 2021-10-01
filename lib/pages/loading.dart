import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  void getData() async{
    Uri url=Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    Response response = await get(url); //before storing the data comes from url we write await so that to store data it can wait for data to get
    Map data=jsonDecode(response.body);
    print(data);
    print(data['completed']);
    // await Future.delayed(Duration(seconds: 3),(){
    //   print("aneeza");
    // }
    // );
    // Future.delayed(Duration(seconds: 2),(){
    //   print(" helloo aneeza");
    // }
    // );
    // print('sxagjfncjkwn');
  }
  void initState(){
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
