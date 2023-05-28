import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ABOUT US"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.cyan,
          ),
          Text(
            'SEYYED ANBIA HOSSEINI',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
          Text(
            'Flatter Developer',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
                height: 2),
          ),
          SizedBox(
            width: 300,
            height: 10,
            child: Divider(
              color: Colors.tealAccent,
              thickness: 2,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.phone_android, color: Colors.teal),
              title: Text(
                'www.LengarLearn.com',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+93708646705',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'seyyedanbiahosseini@gmail.com',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(
                Icons.telegram,
                color: Colors.teal,
              ),
              title: Text(
                '@seyyedanbia',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: Icon(
                Icons.adb,
                color: Colors.teal,
              ),
              title: Text(
                'seyyedAnbiahosseini',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
