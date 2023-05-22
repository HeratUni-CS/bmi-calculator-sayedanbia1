import 'package:flutter/material.dart';
import 'reausable.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text("your Result",style: KTitleTextStyle),
            ),
            ),
          Expanded(
             flex: 2,
              child: reusableWidget(
                color: KActivecolor,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("NORMAL",style: KResualtTextStyle),
                    Text("25",style: KBMITextStyle,),
                    Text("You are good to go ",textAlign: TextAlign.center,style: KBodyTextStyle
                      ,),
                  ],
              ),

          ),),
        ],
      ),
    );
  }
}
