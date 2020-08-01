import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hihi'),
        ),
        body: RaisedButton(
          onPressed: () => print("hihihi"),
          child: Text('body')
        ),
      )
    );
  }
}