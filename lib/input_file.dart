import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reausable.dart';
import 'containercontent.dart';

const bottomcontainercolor= Color(0xFFEB1555);
const activecolor= Color(0xFF0A0D22);
const inactivecolor=Color(0xFF1D1F33);

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
                      color: (sg == gender.male) ? activecolor :inactivecolor,
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
                      color: (sg == gender.female)? activecolor :inactivecolor,
                      child: containercontent(iconData: FontAwesomeIcons.venus,
                      label: "Female"),
                ),
              ],
            )),
            reusableWidget(color: activecolor),
            Expanded(
                child: Row(
              children: [
                reusableWidget(color: activecolor),
                reusableWidget(color: activecolor),
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

