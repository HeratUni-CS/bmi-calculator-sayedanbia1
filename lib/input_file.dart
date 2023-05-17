import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 70,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Male",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF868892),
                      ),
                      ),
                    ],
                  ),
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

class reusableWidget extends StatelessWidget {
 reusableWidget({required this.color, this.child});
final Color color;
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
    ));
  }
}
