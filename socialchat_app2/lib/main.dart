import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialchat/chat.dart';
import 'package:socialchat/home.dart';
import 'package:socialchat/login.dart';
import 'package:socialchat/signup.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "home",
    routes: {
      "home": (context) => MyHome(),
      "login": (context) => MyLogin(),
      "signup": (context) => MySignup(),
      "chat": (context) => MyChat(),
    },
  ));
}

