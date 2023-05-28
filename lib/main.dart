import 'package:bmi_starting/components/bottombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/input_file.dart';
import 'components/firstpagecontainercontent.dart';
import 'components/about.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0x13FFFFFF),),
        scaffoldBackgroundColor: Color(0xFFA4A4B2),
      ),
      home: first(),
    );
  }
}
class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
            onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> InputPage(),
          ),
          );
          },
          child: reuse(label: "BMI CALCULATOR"),
            ),
            TextButton(
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> about(),));
              },
              child: reuse(label: "ABOUT US"),
            ),
            TextButton(
              onPressed: (){
                SystemNavigator.pop();
              },
              child: reuse(label: "EXIT"),
            ),


          ],
        ),
      ),
    );
  }
}



