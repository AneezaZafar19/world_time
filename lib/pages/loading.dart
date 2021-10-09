import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  //String time='Loading';
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Karachi',flag: 'germany.png',url1: 'Asia/Karachi');
    await instance.getTime(); // we write await here so that before printing time we are waiting to get the time and also it is custom function so
    // we put future keyword with this custom function getTime
    Navigator.pushReplacementNamed(context, '/', arguments: {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
    });
  }
  void initState(){
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child:Text('Loading'),
        //Text(time),
      ),
    );
  }
}
