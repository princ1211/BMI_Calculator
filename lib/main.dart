import 'package:flutter/material.dart';
import 'screen/InputPage.dart';

void main() => runApp(BMIcalc());
class BMIcalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF141A3C),
      ),
      home:InputPage() ,
    );
  }
}


