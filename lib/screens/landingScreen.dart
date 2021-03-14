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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            Card(
           color: Color.fromRGBO(234, 228, 184, 1),
           child: Column(
             children: <Widget>[
               Container(
              margin: EdgeInsets.all(30.0),
              child:  Image.asset('images/sugg.png')   
            ),
            ElevatedButton(onPressed: (){}, child: Text('get started'))
             ],
           ),
            ),  
          ],
      ),
    );
  }
}
