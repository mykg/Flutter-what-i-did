import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  var authc = FirebaseAuth.instance;

  String password, email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              email = value;
            },
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
          ),
          RaisedButton(
            onPressed: () async {
              print(email);
              print(password);
              var signin = await authc.signInWithEmailAndPassword(email: email, password: password);
              print(signin);
              if (signin != null) {
                print('logged in');
              }
            },
            child: Text('click'),
          )
        ],
    ));
  }
}