import 'dart:ui';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
 
  static final String id = 'sec';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class  _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login',
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
           child: Column(
             children: <Widget>[
               Container(
                child: Text('login page created'),
            ),
             ],
           ),
            ),  
          ],
      ),
    );
  }
}
