import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('bar'),),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              print('going to reg');
              Navigator.pushNamed(context, "reg");
            },
            child: Text('Register'),
          ),
          RaisedButton(
            onPressed: () {
              print('going to login');
              Navigator.pushNamed(context, "login");
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}