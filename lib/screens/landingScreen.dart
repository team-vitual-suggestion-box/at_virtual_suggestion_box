import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:at_virtual_suggestion_box/screens/loginScreen.dart';


class LandingPage extends StatefulWidget {
 
  static final String id = 'first';
  @override
  _LandingPageState createState() => _LandingPageState();
}

class  _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
 
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Confetti-Doodles.png'),
              fit: BoxFit.cover)
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Text('WELCOME' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),),
              Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    SizedBox(height: 180),
              Card(
           shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                  ),
           elevation: 7,
           color: Color.fromRGBO(234, 228, 184, 1),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(height: 30),
               Text('VIRTUAL SUGGESTION BOX', 
                              style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                          ),),
                           Divider(
                         thickness: 1,
                         color: Colors.grey,
                         ), 
               Container(
              margin: EdgeInsets.all(35.0),
              child:  Image.asset('images/sugg.png')   
            ),
            SizedBox(height: 30),
            Text('For transparency, openness, and approachability of organisation',style: TextStyle( fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
               Navigator.pushReplacementNamed(context, LoginPage.id);
            }, child: 
            Text('get started')
           
            ),
             ],
           ),
            ), 
            ]
          ), 
            )
              )
    );
  }
}
