import 'package:flutter/material.dart';
import 'package:nav_app/db.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: <Widget>[
          Text('this is home page'),
          RaisedButton(
            child: Text('press for DB'),
            onPressed: () {
              //print('pressed'),
              //Navigator.push(context, MaterialPageRoute(builder: (context) => MyDB()));
              Navigator.pushNamed(context, "/db");
            }
            ),
        ],
      ),
    );
  }
}