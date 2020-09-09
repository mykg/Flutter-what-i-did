import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
  
  
}

class _MyChatState extends State<MyChat> {
  
  String msg;
  var fs = FirebaseFirestore.instance;

  getmsglive() async {
    await for (var ss in fs.collection("chat").snapshots()){
      for (var doc in ss.docs) {
        print(doc.data());
      }
    }
  }

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
            Navigator.pushNamedAndRemoveUntil(context, "home", (route) => false);
          })
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              msg = value;
            },
          ),
          FlatButton(
            onPressed: () async {
              await fs.collection('chat').add({
                "text": msg,
                "sender": authc.currentUser.email,
              });
            }, 
            child: Text('send msg')
          ),
          FlatButton(
            onPressed: () async {
              var msgdoc = await fs.collection('chat').get();
              //print(msgdoc.docs[0].data());
              for (var i in msgdoc.docs) {
                print(i.data());
              }
            }, 
            child: Text('get msg')
          ),
          FlatButton(
            onPressed: () {
              getmsglive();
            },
            child: Text('get stream chat')
          ),
          RaisedButton(
            onPressed: () {
              var user = authc.currentUser;
              print(user.email);
            },
            child: Text('whoami'),
          ),
        ],
      ),
    );
  }
}