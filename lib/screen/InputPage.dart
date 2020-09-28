import 'file:///C:/Users/Admin/AndroidStudioProjects/bmi_calculator/lib/screen/Resultpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/Mycontainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/Mycenter.dart';
import '../constants.dart';
import '../component/bottombutton.dart';
import '../bmi_brain.dart';

enum gender {
  male, female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor= inactivecolor;
  Color femalecolor = inactivecolor;
  int height =180;
  int weight = 60;
  int age = 20;
   gender selectgender;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF141111),
        appBar: AppBar(
          backgroundColor: Color(0xFF141111),
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(

                    onpress: (){
                      setState(() {
                        selectgender = gender.male;
                      });
                    },
                    colour: selectgender==gender.male ? activecolor : inactivecolor,
                    cardchild: Mycenter(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),

                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onpress: (){
                      setState(() {
                        selectgender = gender.female;
                      });
                    },
                      colour: selectgender == gender.female ? activecolor :inactivecolor,
                    cardchild: Mycenter(
                      icon: FontAwesomeIcons.venus,
                      text: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
                colour: activecolor,
              cardchild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',
                  style: Style1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                      style: knumbers),
                      Text('cm',
                      style: Style1,)

                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                      overlayColor: Color(0x10EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey.shade800
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      max: 220,
                      min:120,

                      onChanged: (double newvalue){
                        setState(() {
                          height= newvalue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                      colour: activecolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Weight',
                        style: Style1,),
                        SizedBox(
                          height: 7.0,

                        ),
                        Text(
                          weight.toString(),
                          style: knumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Myroundbutton(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  weight++;
                                });


                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Myroundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                      colour: activecolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Age',
                          style: Style1,),
                        SizedBox(
                          height: 7.0,

                        ),
                        Text(
                          age.toString(),
                          style: knumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Myroundbutton(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Myroundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  age--;
                                });

                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
          Bottombutton(
            ontap: () {
      Bmi_brain calc =
      Bmi_brain(height: height, weight: weight);

      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => Resultpage(
      bmiresult: calc.calculateBMI(),
      resulttext: calc.getResult(),
      interp: calc.getInterpretation(),
      ),
      ),
      );
      },
            text: 'Calculate',
          )

        ]));
  }
}


class Myroundbutton extends StatelessWidget {
  Myroundbutton({this.icon,this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onpress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey.shade700,

    );
  }
}
