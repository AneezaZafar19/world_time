import 'package:http/http.dart';
import 'dart:convert';
class WorldTime{
  String location; // location name for the UI
  String time;    //  time in that location
  String flag;    //  url to an asset flag icon
  String url1;     //  location url for the api endpoint
  WorldTime({this.location,this.flag,this.url1});
Future<void> getTime() async {
  // if we want to create a custom async function then we have to use future and wrap it around data type so that
  // it tell the dart that it return a void value in future but when this async function is fully complete
  try {
    Uri url = Uri.parse('http://worldtimeapi.org/api/timezone/$url1');

    Response response = await get(
        url); //before storing the data comes from url we write await so that to store data it can wait for data to get
    Map data = jsonDecode(response.body);
    print(data);

    //get properties from data
    String datetime = data['datetime'];
    print(datetime);
    String offset = data['utc_offset'].substring(1, 3);

    //create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));


    //set the time property
    time = now.toString();

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
  catch(e){
    print("error occurs : $e");
    //time="there is some error that's why time is not fetched";
  };
}}

WorldTime instance = WorldTime(location: 'Karachi',flag: 'germany.png',url1: 'Asia/Karachi');
