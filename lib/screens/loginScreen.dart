import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:at_demo_data/at_demo_data.dart' as at_demo_data;
import 'package:at_virtual_suggestion_box/screens/chatScreen.dart';

class LoginPage extends StatefulWidget {
 
  static final String id = 'sec';
    
  @override
 
  _LoginPageState createState() => _LoginPageState();
}
class  _LoginPageState extends State<LoginPage> {
     bool showSpinner = false;
    String atSign;
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
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Center(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Confetti-Doodles.png'),
              fit: BoxFit.cover)
              ),
          child: ListView(
            children: [
              Container(
                height: 220,
                width: 180,
                
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                     
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'images/atsign.png',
                            height: 50.0,
                            width: 50.0,
                          ),
                        ),
                        title: Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                          ),
                        ),
                        subtitle: DropdownButton<String>(
                          hint:  Text('\tPick an @sign'),
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black87
                          ),
                          underline: Container(
                            height: 2,
                            color: Colors.deepOrange,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              atSign = newValue;
                            });
                          },
                          value: atSign != null ? atSign
                            : null,
                          items: at_demo_data.allAtsigns
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: ElevatedButton(
                          child: Text('Login'),
                          onPressed: (){
                             Navigator.pushReplacementNamed(context, ChatScreen.id); 
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                 
              ),
              
            ],
          ),
          ),
        ),
      ),
    );
  }
}