import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful demo'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print('pressed');
              Navigator.pushNamed(context, "/profile");
            }, 
            child: Text('see profile'),
          ),
          RaisedButton(
            onPressed: () {
              print('pressed');
              Navigator.pushNamed(context, "/login");
            }, 
            child: Text('to login'),
          )
        ],
      ),
    );
  }
}