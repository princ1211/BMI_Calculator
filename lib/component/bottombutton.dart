import 'package:flutter/material.dart';



class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.text,this.ontap});

  final String text;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(

        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(text,
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,

                )),
          ],
        ),
      ),
    );
  }
}
