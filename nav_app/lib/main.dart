import 'package:flutter/material.dart';
import 'package:nav_app/db.dart';
import 'home.dart';
import 'db.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "/db": (context) => MyDB(),
      }
    )
  );
}
