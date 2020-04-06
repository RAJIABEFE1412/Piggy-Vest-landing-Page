import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMessage extends StatelessWidget {
  final bool left;
  final String image,text,text2,text3;
  CustomMessage({this.left,this.image,this.text,this.text2,this.text3});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            child: Image.asset(image),
          ),
          Card(
            child:Column(
              children: <Widget>[
                Text(text),
                Text(text2),
                Text(text3),
              ],
            )
          )
        ],
      ),
    );
  }
}
