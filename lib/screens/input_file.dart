import 'package:bmi_starting/bmi_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reausable.dart';
import '../components/containercontent.dart';
import '../constants.dart';
import 'Resultpage.dart';
import '../components/bottombutton.dart';
import '../components/Roundiconbutton.dart';

enum gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
 gender? sg ;
 int height =175;
 int weight =70;
 int age= 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                reusableWidget(
                  onpressed: () {
                    setState(() {
                      sg=gender.male;
                    });
                  },
                      color: (sg == gender.male) ? KActivecolor :KInactivecolor,
                      child: containercontent(iconData: FontAwesomeIcons.mars,
                      label: "Man"
                  ),
                ),
                reusableWidget(
                  onpressed: (){
                    setState(() {
                      sg=gender.female;
                    });
                  },
                      color: (sg == gender.female)? KActivecolor :KInactivecolor,
                      child: containercontent(iconData: FontAwesomeIcons.venus,
                      label: "Female"),
                ),
              ],
            )),
            reusableWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height",style: KLabelstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: KStylenumber,
                      ),
                      Text("cm",style: KLabelstyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 1,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF888993),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x27EB1555),
                    ),
                    child: Slider(
                        value:height.toDouble(),
                        onChanged:(double value) {
                          setState(() {
                            height=value.round();
                          });
                        },
                        min: 120,
                        max: 220,
                    ),
                  ),
                ],
              ),
                color: KActivecolor
            ),
            Expanded(
                child: Row(
              children: [
                reusableWidget(
                    color: KActivecolor,
                    child: Column(
                      children: [
                        Text("weight",style: KLabelstyle,
                        ),
                        Text(weight.toString(),style: KStylenumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icondata:Icons.remove,onpressed: (){
                              setState(() {
                                weight--;
                              });
                            }),
                            SizedBox(
                              width: 10,
                            ),
                           RoundIconButton(icondata: Icons.add,onpressed: (){
                             setState(() {
                               weight++;
                             });
                           },),
                          ],
                        ),
                      ],
                    ),
                ),
                reusableWidget(
                    color: KActivecolor,
                  child: Column(
                children: [
                Text("age",style: KLabelstyle,
                ),
                Text(age.toString(),style: KStylenumber,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIconButton(icondata:Icons.remove,onpressed: (){
                      setState(() {
                        age--;
                      });
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    RoundIconButton(icondata: Icons.add,onpressed: (){
                      setState(() {
                        age++;
                      });
                    },),
                  ],
                ),
              ],
                ),
                ),
              ],
            ),
            ),
            bottombutton(onpressed:(){
              BMIBRAIN bmi=BMIBRAIN(height: height, weight: weight)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return ResultPage(
                      result: bmi.getresult(),
                      bmi: bmi.getBmi(),
                      interpretation: bmi.getinterpretation()
                  );
                },),
              );
            },
            label: "CALCULATE BMI",),
          ],
        ),
    );
  }
}






