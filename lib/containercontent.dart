import 'package:flutter/material.dart';

class containercontent extends StatelessWidget {

  final IconData iconData;
  final String label;

  containercontent({ required this.iconData, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 70,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color(0xFF868892),
        ),
        ),
      ],
    );
  }
}