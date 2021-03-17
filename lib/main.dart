import 'package:at_virtual_suggestion_box/screens/landingScreen.dart';
import 'package:flutter/material.dart';
import 'package:at_virtual_suggestion_box/screens/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute:  LandingPage.id,
      routes: {
        LandingPage.id: (context) => LandingPage(),
        LoginPage.id: (context) => LoginPage()
      },
    );
  }
}