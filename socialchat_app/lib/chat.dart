import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
  
  
}

class _MyChatState extends State<MyChat> {

  @override
  void initState() {
    print('landed');
    super.initState();
  }
  var authc = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.close), 
            onPressed: () async {
            print('sign out');
            await authc.signOut();
            Navigator.pushNamed(context, "login");
          })
        ],
      ),
      body: RaisedButton(
        onPressed: () {
          var user = authc.currentUser;
          print(user.email);
        },
        child: Text('whoami'),
      ),
    );
  }
}