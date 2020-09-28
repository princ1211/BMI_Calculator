
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../screen/InputPage.dart';
import '../component/bottombutton.dart';

class Resultpage extends StatelessWidget {
Resultpage({@required this.bmiresult,@required this.interp, @required this.resulttext});
  final String bmiresult;
  final String resulttext;
  final String interp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      backgroundColor: inactivecolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(

            child: Center(
              child: Container(

                margin: EdgeInsets.all(10.0),

                child: Text(

                  'Your Result',
                  style: knumbers,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: activecolor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resulttext,
                    style: kinner,
                  ),
                  Text(
                    bmiresult,
                    style: kmainresult,
                  ),
                  Text(interp,
                  style: kbottominner,),

                ],
              ),
            ),
          ),
          Bottombutton(
            text: 'Re-Calculate',
            ontap: (){
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
