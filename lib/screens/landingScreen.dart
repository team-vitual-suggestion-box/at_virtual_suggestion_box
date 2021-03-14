import 'dart:ui';
import 'package:flutter/material.dart';


class LandingPage extends StatefulWidget {
 
  static final String id = 'first';

  @override
  _LandingPageState createState() => _LandingPageState();
}

class  _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        
          children: <Widget>[
            Card(
           color: Colors.white,
           
           child: Column(
             children: <Widget>[
               Container(
              margin: EdgeInsets.all(0.0),
              child:  Image.asset('images/sugg.png')   
            ),
            RaisedButton(
              child: Text('get start'),
              onPressed: null,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.deepOrange),
              ),
              color: Colors.deepOrange,
            )
             ],
           ),
            ),  
          ],
      ),
    );
  }
}
