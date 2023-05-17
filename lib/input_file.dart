import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reausable.dart';
import 'containercontent.dart';

const activecolor= Color(0xFF0A0D22);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  color: activecolor,
                  child: containercontent(iconData: FontAwesomeIcons.mars,label: "Man"),
                ),
                reusableWidget(color: activecolor),
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

