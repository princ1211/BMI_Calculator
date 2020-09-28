import '../screen/InputPage.dart';
import 'package:flutter/material.dart';


class MyContainer extends StatelessWidget {
MyContainer({this.colour, this.cardchild, this.onpress});

final Color colour;
final Widget cardchild;
final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(

      child: cardchild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: colour
      )
      ),
    );
  }
}
