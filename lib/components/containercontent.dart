import 'package:flutter/material.dart';
import '../constants.dart';


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
        Text(
          label,style: KLabelstyle,
        ),
      ],
    );
  }
}