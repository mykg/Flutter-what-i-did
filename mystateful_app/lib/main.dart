import 'package:flutter/material.dart';
import 'package:mystateful_app/login.dart';
import 'package:mystateful_app/profile.dart';
import 'package:mystateful_app/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      theme: ThemeData.dark(),
      routes: {
        "/": (context) => MyHome(),
        "/profile": (context) => MyProfile(),
        "/login": (context) => MyLogin(),
      },
    )
  );
}

