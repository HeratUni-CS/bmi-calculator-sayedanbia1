import 'package:flutter/material.dart';

class reuse extends StatelessWidget {
  String label;
  void Function()? onpressed;
  reuse({required this.label,this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),color: Color(0xBEC2C5D5),
      ),
      margin: EdgeInsets.all(15),
      width: 280,
      height: 70,
      child: Center(
        child: Text(label,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF6B6060),
            fontSize: 25),),
      ),
    );
  }
}
