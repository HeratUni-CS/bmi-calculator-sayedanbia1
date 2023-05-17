import 'package:flutter/material.dart';

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
                reusableWidget(color: activecolor,),
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
