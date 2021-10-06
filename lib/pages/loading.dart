import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  void getTime() async{
    //Uri url=Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    Uri url=Uri.parse('http://worldtimeapi.org/api/ip');
    Response response = await get(url); //before storing the data comes from url we write await so that to store data it can wait for data to get
    Map data=jsonDecode(response.body);
    print(data);
    //get properties from data
    String datetime=data['datetime'];
    //String offset=data['utc_offset'];
    print(datetime);
    //print(offset);
    String offset=data['utc_offset'].substring(1,3);
    //create datetime object
    DateTime now=DateTime.parse(datetime);
    now=now.add(Duration(hours: int.parse(offset)));
    print(now);
    //print(data['completed']);
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
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
