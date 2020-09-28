import 'package:flutter/material.dart';
import '../constants.dart';

class Mycenter extends StatelessWidget {
Mycenter({this.icon,this.text});
final String text;
final IconData icon;
@override
Widget build(BuildContext context) {
  return Center(
    child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80,),
        SizedBox(height: 10.0,),
        Text(text,
          style: Style1,)

      ],
    ),
  );
}
}

