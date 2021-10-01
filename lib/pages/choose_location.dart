import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();

}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    print('this is build method');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [

          RaisedButton(
            onPressed: (){
              setState(() {
                counter +=1;
              });

            },
              child:Text('counter = $counter'),
          )
        ],
      ),
    );
  }
}
