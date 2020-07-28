import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

MyApp(){
  FlutterStatusbarcolor.setStatusBarColor(Colors.amber);

  lw() {
    print('pressed');
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.red,
        fontSize: 16.0
    );
  }
  
  return MaterialApp(home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("bar"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.accessible), onPressed: lw),
      ],
    )
  ));
}
