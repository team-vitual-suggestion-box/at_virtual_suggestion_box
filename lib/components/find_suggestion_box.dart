import 'package:flutter/material.dart';

class FindSugBox extends StatefulWidget {
  @override
  _FindSugBoxState createState() => _FindSugBoxState();
}

class _FindSugBoxState extends State<FindSugBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: TextField(
            onChanged: (value) {},
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              hintText: "find suggestion box",
              border: OutlineInputBorder()
            ),
          )),
          ElevatedButton(onPressed: (){}, child: Text('find')),
        ]
      ),
    );
  }
}
