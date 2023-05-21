import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reausable.dart';
import 'containercontent.dart';
import 'constants.dart';

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
                  Text("Height",style: KLabelstyle,),
                ],
              ),
                color: KActivecolor
            ),
            Expanded(
                child: Row(
              children: [
                reusableWidget(color: KActivecolor),
                reusableWidget(color: KActivecolor),
              ],
            ),
            ),
            Container(
              height: 80,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
            ),
          ],
        ),
    );
  }
}

