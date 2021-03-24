import 'package:flutter/material.dart';
import 'package:at_virtual_suggestion_box/components/find_suggestion_box.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabMain();
  }
}

/// This is the stateless widget that the main application instantiates.
class TabMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        FindSugBox(),
        SizedBox(height: 15),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
         SizedBox(height: 15),
         Text('no recent messeages found'),
         IconButton(
            icon: Icon(Icons.error_outline_sharp, size: 30.0),
            onPressed: null,
          )
      ],
      )
    );
  }
}