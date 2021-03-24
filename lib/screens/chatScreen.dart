import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:at_virtual_suggestion_box/tabs/tab1.dart';
import 'package:at_virtual_suggestion_box/tabs/tab2.dart';
import 'package:at_virtual_suggestion_box/tabs/tab3.dart';



class ChatScreen extends StatefulWidget {
 
  static final String id = 'third';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class  _ChatScreenState extends State<ChatScreen> {

  @override
   Widget build(BuildContext context) {
        return DefaultTabController(
          length: 3, 
          child: Scaffold(
          appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu_outlined,
            size: 25.0,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "HOME",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined ,size: 25.0),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
              tabs: [
                Tab(icon: Icon( Icons.send_rounded), text: 'send suggestion',),
                Tab(icon: Icon( Icons.add_box_outlined), text: 'create box',),
                Tab(icon: Icon( Icons.inbox_rounded), text: 'inbox /received suggestion',),
              ],
            ),
      ),
      body: TabBarView(
            children: [
              Tab1(),
              Tab2(),
              Tab3()
            ],
          )
        ),
        );
        
  }
}
