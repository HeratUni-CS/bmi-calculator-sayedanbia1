import 'package:flutter/material.dart';

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